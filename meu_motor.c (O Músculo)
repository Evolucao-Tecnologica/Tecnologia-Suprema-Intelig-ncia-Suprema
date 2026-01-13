#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>
#include <netinet/in.h>

void iniciar_motor() {
    int sock = socket(AF_INET, SOCK_DGRAM, 0);
    struct sockaddr_in addr;
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = INADDR_ANY;
    addr.sin_port = htons(53);

    if (bind(sock, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
        perror("Erro ao abrir porta 53. Use sudo.");
        exit(1);
    }
    printf("🛡️ Motor C AdemarID: Porta 53 Protegida.\n");
    close(sock);
}

int main() {
    iniciar_motor();
    return 0;
}
