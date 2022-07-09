#* Installation
.PHONY: install-yabai
install-yabai:
	brew install koekeishiya/formulae/yabai
	sudo yabai --install-sa
	sudo yabai --load-sa
	brew services start yabai

.PHONY: install-spacebar
install-spacebar:
	brew install cmacrae/formulae/spacebar
	brew services start spacebar

.PHONY: to-local
to-local:
	echo "COPYING CONFIGS TO THIS MACHINE..."
	cp ./amethyst.yml ~/.amethyst.yml
	cp ./yabairc ~/.yabairc
	cp -r ./spacebar ~/.config/spacebar
	sudo chmod +x ~/.config/spacebar/spacebarrc
	echo "Finished!"

.PHONY: from-local
from-local:
	echo "COPYING CONFIGS FROM LOCAL MACHINE..."
	cp ~/.amethyst.yml ./amethyst.yml
	cp ~/.yabairc ./yabairc
	cp -r ~/.config/spacebar ./spacebar
	cp ~/.amethyst.yml ./amethyst.yml
	echo "Finished!"
