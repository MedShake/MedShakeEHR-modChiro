default:
	rm -f MedShakeEHR-modChiro.zip SHA256SUMS
	zip -r MedShakeEHR-modChiro.zip . -x .git\* -x Makefile -x installer\*
	sha256sum -b MedShakeEHR-modChiro.zip > preSHA256SUMS
	head -c 64 preSHA256SUMS > SHA256SUMS
	rm -f preSHA256SUMS

clean:
	rm -f MedShakeEHR-modChiro.zip