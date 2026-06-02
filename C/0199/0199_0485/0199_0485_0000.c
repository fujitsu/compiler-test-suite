#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed short, unsigned int, signed short);
extern unsigned int (*v2) (signed short, unsigned int, signed short);
void v3 (unsigned char, signed int);
void (*v4) (unsigned char, signed int) = v3;
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern signed short v7 (unsigned char, signed short, unsigned char, unsigned int);
extern signed short (*v8) (unsigned char, signed short, unsigned char, unsigned int);
extern signed int v9 (unsigned int, unsigned int, unsigned int, unsigned char);
extern signed int (*v10) (unsigned int, unsigned int, unsigned int, unsigned char);
extern signed short v11 (signed short, signed short);
extern signed short (*v12) (signed short, signed short);
extern unsigned int v13 (signed short, unsigned int, unsigned short);
extern unsigned int (*v14) (signed short, unsigned int, unsigned short);
extern void v15 (unsigned short, signed short, unsigned int, unsigned short);
extern void (*v16) (unsigned short, signed short, unsigned int, unsigned short);
extern unsigned char v17 (unsigned int, unsigned int, unsigned char);
extern unsigned char (*v18) (unsigned int, unsigned int, unsigned char);
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
extern void v21 (signed short, signed short, unsigned short, signed int);
extern void (*v22) (signed short, signed short, unsigned short, signed int);
extern unsigned int v23 (unsigned char);
extern unsigned int (*v24) (unsigned char);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed int v27 (unsigned char, signed short);
extern signed int (*v28) (unsigned char, signed short);
extern signed int v29 (unsigned int);
extern signed int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 3;
signed char v32 = 3;
signed int v31 = -4;

void v3 (unsigned char v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = 2;
unsigned int v37 = 7U;
unsigned char v36 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed short v41;
unsigned int v42;
signed short v43;
unsigned int v44;
v41 = -3 - -3;
v42 = 6U - 3U;
v43 = -2 + 0;
v44 = v1 (v41, v42, v43);
history[history_index++] = (int)v44;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
