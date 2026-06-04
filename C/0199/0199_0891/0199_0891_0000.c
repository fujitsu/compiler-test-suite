#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed char);
extern signed int (*v2) (signed char);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed char v5 (unsigned char, signed char, unsigned int);
extern signed char (*v6) (unsigned char, signed char, unsigned int);
extern signed int v7 (unsigned char);
extern signed int (*v8) (unsigned char);
signed int v9 (unsigned int, signed short);
signed int (*v10) (unsigned int, signed short) = v9;
unsigned char v11 (signed int, unsigned short);
unsigned char (*v12) (signed int, unsigned short) = v11;
extern unsigned short v13 (unsigned char, signed short);
extern unsigned short (*v14) (unsigned char, signed short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (signed short, unsigned int, signed short);
extern signed short (*v18) (signed short, unsigned int, signed short);
extern signed int v21 (signed short, signed char, unsigned int);
extern signed int (*v22) (signed short, signed char, unsigned int);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern unsigned int v25 (signed char, signed int, signed char);
extern unsigned int (*v26) (signed char, signed int, signed char);
signed int v27 (unsigned char);
signed int (*v28) (unsigned char) = v27;
extern signed char v29 (unsigned char, unsigned short, unsigned char);
extern signed char (*v30) (unsigned char, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 5U;
unsigned short v32 = 7;
signed short v31 = 3;

signed int v27 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = -2;
signed char v36 = 2;
signed short v35 = 1;
trace++;
switch (trace)
{
case 11: 
return -4;
default: abort ();
}
}
}
}

unsigned char v11 (signed int v38, unsigned short v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned char v42 = 2;
signed int v41 = -4;
signed char v40 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned int v43, signed short v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned short v47 = 0;
signed int v46 = -2;
unsigned short v45 = 2;
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
signed char v50;
signed int v51;
v50 = 0 + 1;
v51 = v1 (v50);
history[history_index++] = (int)v51;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
