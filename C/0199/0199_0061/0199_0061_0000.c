#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned char, signed short, unsigned int, unsigned short);
extern signed int (*v2) (unsigned char, signed short, unsigned int, unsigned short);
extern signed int v3 (unsigned char, unsigned short, signed char, signed short);
extern signed int (*v4) (unsigned char, unsigned short, signed char, signed short);
extern unsigned int v5 (signed char, unsigned int, unsigned int, unsigned int);
extern unsigned int (*v6) (signed char, unsigned int, unsigned int, unsigned int);
extern signed int v9 (signed char, unsigned int, unsigned int, signed char);
extern signed int (*v10) (signed char, unsigned int, unsigned int, signed char);
unsigned int v11 (unsigned short, unsigned char);
unsigned int (*v12) (unsigned short, unsigned char) = v11;
unsigned char v13 (unsigned short, signed short, signed int);
unsigned char (*v14) (unsigned short, signed short, signed int) = v13;
extern signed short v15 (unsigned int, unsigned char, unsigned char);
extern signed short (*v16) (unsigned int, unsigned char, unsigned char);
extern unsigned int v17 (unsigned short);
extern unsigned int (*v18) (unsigned short);
extern signed int v19 (unsigned int, signed char, signed int, signed char);
extern signed int (*v20) (unsigned int, signed char, signed int, signed char);
extern signed char v21 (signed char, unsigned short);
extern signed char (*v22) (signed char, unsigned short);
extern void v23 (unsigned int, unsigned short);
extern void (*v24) (unsigned int, unsigned short);
extern unsigned char v27 (signed int, signed short, signed short);
extern unsigned char (*v28) (signed int, signed short, signed short);
extern void v29 (signed int, unsigned short, unsigned int, signed short);
extern void (*v30) (signed int, unsigned short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
signed int v32 = -3;
signed int v31 = 3;

unsigned char v13 (unsigned short v34, signed short v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 7U;
unsigned char v38 = 4;
signed short v37 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned short v40, unsigned char v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 6U;
unsigned short v43 = 1;
signed char v42 = -3;
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
unsigned char v47;
signed short v48;
unsigned int v49;
unsigned short v50;
signed int v51;
v47 = 7 - 3;
v48 = -4 - 0;
v49 = 6U - 5U;
v50 = 6 - 3;
v51 = v1 (v47, v48, v49, v50);
history[history_index++] = (int)v51;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
