#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned char, signed char, signed char);
extern signed short (*v2) (unsigned char, unsigned char, signed char, signed char);
extern unsigned short v5 (unsigned int, unsigned short);
extern unsigned short (*v6) (unsigned int, unsigned short);
extern unsigned char v7 (unsigned int, signed int, unsigned short, signed short);
extern unsigned char (*v8) (unsigned int, signed int, unsigned short, signed short);
extern signed int v9 (unsigned short, signed short, signed char, signed short);
extern signed int (*v10) (unsigned short, signed short, signed char, signed short);
void v11 (signed short, unsigned short, signed char, signed short);
void (*v12) (signed short, unsigned short, signed char, signed short) = v11;
extern void v13 (signed short, unsigned short);
extern void (*v14) (signed short, unsigned short);
extern unsigned char v15 (unsigned int, signed char);
extern unsigned char (*v16) (unsigned int, signed char);
extern void v17 (signed int, signed char, unsigned char, unsigned int);
extern void (*v18) (signed int, signed char, unsigned char, unsigned int);
extern signed short v19 (signed short, signed char);
extern signed short (*v20) (signed short, signed char);
extern signed char v21 (signed int, signed int, signed int, unsigned short);
extern signed char (*v22) (signed int, signed int, signed int, unsigned short);
extern signed short v23 (unsigned int, signed short);
extern signed short (*v24) (unsigned int, signed short);
extern signed int v25 (unsigned short, signed short, unsigned int, signed char);
extern signed int (*v26) (unsigned short, signed short, unsigned int, signed char);
signed short v27 (void);
signed short (*v28) (void) = v27;
extern signed char v29 (unsigned short, unsigned short);
extern signed char (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
signed int v32 = -3;
signed short v31 = 1;

signed short v27 (void)
{
{
for (;;) {
signed char v36 = -1;
unsigned char v35 = 3;
signed int v34 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed short v37, unsigned short v38, signed char v39, signed short v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned short v43 = 5;
signed int v42 = -2;
unsigned int v41 = 7U;
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
unsigned char v46;
unsigned char v47;
signed char v48;
signed char v49;
signed short v50;
v46 = 0 + 7;
v47 = 7 + 5;
v48 = -1 - 3;
v49 = 2 - 3;
v50 = v1 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
