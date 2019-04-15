# for https://github.com/Carthage/Carthage/issues/2767
all:
	rm -rf ~/Library/Caches/org.carthage.CarthageKit
	carthage update --no-checkout --no-build --platform ios --no-use-binaries
	cat Cartfile.resolved
	grep 'github "TextureGroup/Texture" "2.8"' Cartfile.resolved
 
