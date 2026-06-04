#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned char, signed short);
extern unsigned int (*v2) (unsigned char, signed short);
extern unsigned char v3 (signed short, unsigned char, signed char);
extern unsigned char (*v4) (signed short, unsigned char, signed char);
unsigned char v5 (unsigned char);
unsigned char (*v6) (unsigned char) = v5;
extern signed short v7 (unsigned int, unsigned int);
extern signed short (*v8) (unsigned int, unsigned int);
extern unsigned int v9 (signed char, signed short, unsigned char, signed char);
extern unsigned int (*v10) (signed char, signed short, unsigned char, signed char);
extern signed short v11 (signed char, signed short, unsigned short, unsigned short);
extern signed short (*v12) (signed char, signed short, unsigned short, unsigned short);
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
extern void v15 (unsigned int, signed int);
extern void (*v16) (unsigned int, signed int);
signed char v17 (unsigned int);
signed char (*v18) (unsigned int) = v17;
extern unsigned char v19 (signed char, unsigned char);
extern unsigned char (*v20) (signed char, unsigned char);
extern void v21 (signed short);
extern void (*v22) (signed short);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
extern signed int v25 (unsigned char);
extern signed int (*v26) (unsigned char);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
unsigned short v29 (signed char, signed int, signed int);
unsigned short (*v30) (signed char, signed int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 3U;
signed char v32 = 1;
signed char v31 = 1;

unsigned short v29 (signed char v34, signed int v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 3U;
signed int v38 = -3;
signed int v37 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned int v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 6U;
signed short v42 = 1;
signed char v41 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 3;
signed char v46 = -3;
signed char v45 = -1;
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
unsigned char v50;
signed short v51;
unsigned int v52;
v50 = 0 - 4;
v51 = 3 - 0;
v52 = v1 (v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
