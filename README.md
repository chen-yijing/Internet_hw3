# Internet Project 3 - Packet Capture and Analysis Tool

This is a **pcap file reader and packet analysis tool** written in C. It processes packet capture files and provides detailed information about each packet, including timestamps, MAC addresses, IP addresses, and TCP/UDP port numbers. Additionally, the tool can count packets based on source and destination IP pairs.

## 📌 Features

1. **Command-line Options**:
   - `-r pcap_file`: Reads packets from a specified pcap file.
   - `-n packet_num`: Captures a specified number of packets from a live device.

2. **Packet Information Display**:
   - Displays the timestamp of each packet (year, month, day, hour, minute, second).
   - Shows source and destination MAC addresses.
   - For IP packets, shows source and destination IP addresses.
   - For TCP/UDP packets, shows the protocol and source/destination port numbers.

3. **Packet Count by IP Pairs**:
   - Counts packets for each `(source IP, destination IP)` pair and displays the statistics.

4. **Flexible Packet Input**:
   - Supports reading packets from a live device or a pcap file based on the specified command-line options.

## 🚀 How to Run

### Compilation
1. Use the included Makefile to compile the program: `make all`

### Running the Program
1. **Read packets from a pcap file**: `sudo ./getpacket -r <pcap_file>`

    - Replace `<pcap_file>` with the name of the pcap file you want to analyze.

2. **Capture a specific number of packets from a live device**: `sudo ./getpacket -n <packet_num>`

    - Replace `<packet_num>` with the number of packets to capture.

3. **Continuous live packet capture**: `sudo ./getpacket`

## 📋 Output Details

For each packet, the program outputs:
- **Timestamp**: The time the packet was captured.  
- **Source and Destination MAC Addresses**: The MAC addresses of the sender and receiver.  
- **IP Packet Details**: If the packet is an IP packet, it displays the source and destination IP addresses.  
- **Protocol Details**: For TCP/UDP packets, it shows the protocol type and source/destination port numbers.  

Finally, the program provides a summary of the packet count for each `(source IP, destination IP)` pair.

## 🛠️ Makefile

To simplify compilation, a Makefile is provided:

- **`make all`**: Compiles the program.  
- **`make clean`**: Removes the compiled binary.  

## ⚠️ Notes

- The program uses `libpcap` for packet capturing and analysis. Ensure that `libpcap` is installed on your system before compiling the program.  
- To capture live packets, the program requires root permissions (use `sudo`).  
- Non-IP packets are excluded from the packet count statistics.  
- If neither `-n` nor `-r` options are provided, the program defaults to continuous packet capture from a live device.

## 📝 Example Commands

1. **Analyze packets from a pcap file**: `sudo ./getpacket -r example.pcap`

2. **Capture and analyze 100 packets from a live device**: `sudo ./getpacket -n 100`

3. **Continuous live packet capture**: `sudo ./getpacket`

## 📈 Future Improvements

- Add support for IPv6 packet analysis.  
- Improve error handling for malformed packets.  
- Provide options for saving the analysis output to a file.  
- Support filtering by specific protocols or IP addresses.
