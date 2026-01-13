import socket
from dnslib import DNSRecord, QTYPE, RR, A

# Minha IA de Linguagem Natural Simplificada
def minha_ia_decide(dominio):
    lixo_digital = ["ads", "googleads", "patrocinado", "doubleclick", "pixel"]
    for termo in lixo_digital:
        if termo in dominio.lower():
            return "0.0.0.0" # Vácuo
    return "10.0.0.1" # Minha Rede Soberana

def rodar_cerebro():
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind(('0.0.0.0', 5353)) # Porta interna de inteligência
    print("🧠 Cérebro IA AdemarID: Monitorando intenções...")
    
    while True:
        data, addr = sock.recvfrom(512)
        d = DNSRecord.parse(data)
        qname = str(d.q.qname)
        ip_final = minha_ia_decide(qname)
        
        reply = d.reply()
        reply.add_answer(RR(d.q.qname, QTYPE.A, rdata=A(ip_final)))
        sock.sendto(reply.pack(), addr)

if __name__ == "__main__":
    rodar_cerebro()
