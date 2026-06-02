#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed short);
extern unsigned char (*v2) (signed short);
unsigned char v3 (signed short, signed char, unsigned char);
unsigned char (*v4) (signed short, signed char, unsigned char) = v3;
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
signed short v7 (signed int, signed int, signed int);
signed short (*v8) (signed int, signed int, signed int) = v7;
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern signed int v11 (signed short, unsigned short, unsigned char);
extern signed int (*v12) (signed short, unsigned short, unsigned char);
extern unsigned int v13 (signed short, signed char, unsigned int);
extern unsigned int (*v14) (signed short, signed char, unsigned int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned short v17 (signed short, unsigned int);
extern unsigned short (*v18) (signed short, unsigned int);
unsigned int v19 (unsigned char);
unsigned int (*v20) (unsigned char) = v19;
extern signed int v21 (unsigned int, signed char, signed short);
extern signed int (*v22) (unsigned int, signed char, signed short);
extern signed short v25 (signed short, unsigned int, unsigned char, unsigned int);
extern signed short (*v26) (signed short, unsigned int, unsigned char, unsigned int);
extern unsigned short v27 (signed short, unsigned short, unsigned char);
extern unsigned short (*v28) (signed short, unsigned short, unsigned char);
extern signed int v29 (signed int, signed int, signed short);
extern signed int (*v30) (signed int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
unsigned short v32 = 7;
unsigned char v31 = 7;

unsigned int v19 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 3;
signed short v36 = -3;
unsigned char v35 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed int v38, signed int v39, signed int v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = -2;
unsigned short v42 = 2;
unsigned char v41 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed short v44, signed char v45, unsigned char v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed char v49 = 3;
signed char v48 = 2;
unsigned short v47 = 7;
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
signed short v52;
unsigned char v53;
v52 = -4 + -1;
v53 = v1 (v52);
history[history_index++] = (int)v53;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
