#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned int, unsigned short);
extern void (*v2) (unsigned int, unsigned short);
signed char v3 (unsigned char, unsigned char, signed short, signed short);
signed char (*v4) (unsigned char, unsigned char, signed short, signed short) = v3;
unsigned short v7 (unsigned char, signed short, signed char);
unsigned short (*v8) (unsigned char, signed short, signed char) = v7;
extern unsigned char v11 (unsigned int, signed char, signed short);
extern unsigned char (*v12) (unsigned int, signed char, signed short);
extern unsigned int v13 (signed int, unsigned short);
extern unsigned int (*v14) (signed int, unsigned short);
signed int v15 (signed int, signed short, unsigned short, signed char);
signed int (*v16) (signed int, signed short, unsigned short, signed char) = v15;
extern unsigned int v17 (unsigned short, unsigned int);
extern unsigned int (*v18) (unsigned short, unsigned int);
extern signed short v21 (signed char, signed int, unsigned int);
extern signed short (*v22) (signed char, signed int, unsigned int);
extern unsigned char v23 (signed short, unsigned int, signed char, signed char);
extern unsigned char (*v24) (signed short, unsigned int, signed char, signed char);
extern signed int v29 (unsigned short, signed char, signed int);
extern signed int (*v30) (unsigned short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 4U;
unsigned char v32 = 5;
unsigned char v31 = 7;

signed int v15 (signed int v34, signed short v35, unsigned short v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 7;
signed int v39 = 3;
signed char v38 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned char v41, signed short v42, signed char v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = -4;
signed char v45 = 3;
unsigned int v44 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned char v47, unsigned char v48, signed short v49, signed short v50)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed char v53 = 2;
unsigned char v52 = 4;
unsigned int v51 = 0U;
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
unsigned int v56;
unsigned short v57;
v56 = v33 + v33;
v57 = 7 + 0;
v1 (v56, v57);
}
} while (trace < 17);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
