#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed short, unsigned char, unsigned short);
extern unsigned short (*v2) (unsigned short, signed short, unsigned char, unsigned short);
extern signed char v3 (signed short, signed short, unsigned short);
extern signed char (*v4) (signed short, signed short, unsigned short);
signed int v5 (signed short, unsigned short);
signed int (*v6) (signed short, unsigned short) = v5;
extern signed char v7 (unsigned char, signed short);
extern signed char (*v8) (unsigned char, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern signed char v13 (signed int);
extern signed char (*v14) (signed int);
signed char v15 (unsigned char, unsigned char);
signed char (*v16) (unsigned char, unsigned char) = v15;
extern unsigned int v19 (signed int, unsigned char);
extern unsigned int (*v20) (signed int, unsigned char);
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
extern signed int v23 (signed char, unsigned int, unsigned short);
extern signed int (*v24) (signed char, unsigned int, unsigned short);
extern unsigned short v25 (unsigned short, unsigned int);
extern unsigned short (*v26) (unsigned short, unsigned int);
extern unsigned char v27 (signed short, unsigned char, signed char);
extern unsigned char (*v28) (signed short, unsigned char, signed char);
extern signed char v29 (unsigned int, unsigned int, unsigned short, signed int);
extern signed char (*v30) (unsigned int, unsigned int, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -4;
signed short v32 = 0;
unsigned int v31 = 0U;

signed char v15 (unsigned char v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = -2;
unsigned char v37 = 3;
unsigned short v36 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed short v39, unsigned short v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = -1;
signed int v42 = -1;
unsigned short v41 = 5;
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
unsigned short v46;
signed short v47;
unsigned char v48;
unsigned short v49;
unsigned short v50;
v46 = 4 - 2;
v47 = -4 - v32;
v48 = 0 - 6;
v49 = 2 + 7;
v50 = v1 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
