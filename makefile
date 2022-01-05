all:
	gcc getpacket2.c -o getpacket -lpcap
clean:
	rm getpacket
run:
	sudo ./getpacket