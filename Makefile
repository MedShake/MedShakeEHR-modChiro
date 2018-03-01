default:
	zip -r MedShakeEHR-modChiro.zip . -x .git\* -x Makefile

clean:
	rm -f MedShakeEHR-modChiro.zip
