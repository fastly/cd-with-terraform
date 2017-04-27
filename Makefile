T_VERSION = 0.8.8

UNAME_S := $(shell uname -s)
UNAME_P := $(shell uname -p)

ifeq ($(UNAME_S),Darwin)
	T_DIST = darwin_amd64
else
	ifeq ($(UNAME_P),x86_64)
		T_DIST = linux_amd64
	endif
	ifneq ($(filter %86,$(UNAME_P)),)
		T_DIST = linux_386
	endif
	ifneq ($(filter arm%,$(UNAME_P)),)
		T_DIST = linux_arm
	endif
endif

install-travis:
ifeq (, $(shell which gem))
	$(error "No Ruby gems found in $(PATH), bailing.")
endif
ifeq (, $(shell which travis))
	@echo "No Travis gem found, installing..."; \
	gem install travis -v 1.8.8 --no-rdoc --no-ri
endif
	@echo "Travis gem installed!"

install-terraform:
ifeq (, $(shell which terraform))
	@echo "Terraform not found, installing..."; \
	curl -fSsL "https://releases.hashicorp.com/terraform/$(T_VERSION)/terraform_$(T_VERSION)_$(T_DIST).zip" -o terraform.zip; \
	unzip -o -q terraform.zip -d $(HOME)/terraform; \
	rm -f terraform.zip; \
	echo "Linking Terraform to PATH, permission may be required"; \
	sudo ln -s -f $(HOME)/terraform/terraform /usr/local/bin/terraform
endif
	@echo "Terraform installed!"

install: install-travis install-terraform
