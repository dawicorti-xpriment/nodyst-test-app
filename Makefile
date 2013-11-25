build:
	@xcodebuild -configuration Debug -sdk iphonesimulator -project nodyst-test-app.xcodeproj

deploy:
	@ios-sim launch build/Debug-iphonesimulator/nodyst-test-app.app

clean:
	@rm -rf build 
