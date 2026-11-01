/* Ad Soyad, SID: 1230031, Gorev: G3 Mesaj Sifreleme ve Butunluk */
const int SID = 1230031;
int msg[30];
int orig[30];
int checksum = 0;
int decrypt_ok = 1;

int rotl_add(int c, int v) {
    unsigned int u = (unsigned int)c;
    return (int)(((u << 1) | (u >> 31)) + (unsigned int)v);
}

int main(void) {
    unsigned int x = (unsigned int)SID;
    int key = SID & 0xFF;
    if (key == 0) {
        key = 0xA5;
    }

    for (int i = 0; i < 30; i++) {
        x = 1664525U * x + 1013904223U;
        int val = (int)(((x >> 16) % 26U) + 65U);
        msg[i] = val;
        orig[i] = val;
    }

    for (int i = 0; i < 30; i++) {
        msg[i] = msg[i] ^ key;
    }

    int c = 0;
    for (int i = 0; i < 30; i++) {
        c = rotl_add(c, msg[i]);
    }
    checksum = c;

    for (int i = 0; i < 30; i++) {
        msg[i] = msg[i] ^ key;
        if (msg[i] != orig[i]) {
            decrypt_ok = 0;
        }
    }
    return 0;
}
