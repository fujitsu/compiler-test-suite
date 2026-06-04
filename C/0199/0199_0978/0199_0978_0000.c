#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char, unsigned short);
extern unsigned char (*v2) (unsigned short, signed char, unsigned short);
extern signed short v3 (unsigned int, signed int, signed char, unsigned short);
extern signed short (*v4) (unsigned int, signed int, signed char, unsigned short);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern signed int v7 (signed short, unsigned char);
extern signed int (*v8) (signed short, unsigned char);
extern unsigned int v9 (signed char, signed char, unsigned short);
extern unsigned int (*v10) (signed char, signed char, unsigned short);
extern unsigned short v11 (unsigned char);
extern unsigned short (*v12) (unsigned char);
extern unsigned char v13 (signed int, signed char);
extern unsigned char (*v14) (signed int, signed char);
extern signed int v15 (unsigned char, unsigned int);
extern signed int (*v16) (unsigned char, unsigned int);
extern unsigned char v17 (unsigned short, unsigned int, unsigned char, unsigned char);
extern unsigned char (*v18) (unsigned short, unsigned int, unsigned char, unsigned char);
extern unsigned char v19 (unsigned int, signed short, unsigned char, signed int);
extern unsigned char (*v20) (unsigned int, signed short, unsigned char, signed int);
extern signed int v21 (unsigned char, unsigned int, signed int);
extern signed int (*v22) (unsigned char, unsigned int, signed int);
extern signed int v23 (unsigned char);
extern signed int (*v24) (unsigned char);
extern signed int v25 (unsigned int, unsigned int);
extern signed int (*v26) (unsigned int, unsigned int);
void v27 (unsigned int, unsigned char, unsigned int);
void (*v28) (unsigned int, unsigned char, unsigned int) = v27;
signed int v29 (signed int);
signed int (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
unsigned char v32 = 5;
unsigned int v31 = 2U;

signed int v29 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 6;
unsigned char v36 = 4;
signed int v35 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v27 (unsigned int v38, unsigned char v39, unsigned int v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 1;
unsigned char v42 = 1;
unsigned short v41 = 0;
trace++;
switch (trace)
{
case 11: 
return;
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
unsigned short v46;
signed char v47;
unsigned short v48;
unsigned char v49;
v46 = 7 + 5;
v47 = -3 + 0;
v48 = 6 + 4;
v49 = v1 (v46, v47, v48);
history[history_index++] = (int)v49;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
