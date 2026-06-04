#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned char);
extern unsigned int (*v2) (unsigned char);
extern unsigned int v3 (unsigned int, unsigned short, unsigned char);
extern unsigned int (*v4) (unsigned int, unsigned short, unsigned char);
extern unsigned int v5 (signed short);
extern unsigned int (*v6) (signed short);
unsigned short v7 (unsigned char);
unsigned short (*v8) (unsigned char) = v7;
extern unsigned short v9 (signed short, signed short);
extern unsigned short (*v10) (signed short, signed short);
extern signed short v11 (signed int, unsigned short, signed int);
extern signed short (*v12) (signed int, unsigned short, signed int);
extern void v13 (signed short, signed short, unsigned short);
extern void (*v14) (signed short, signed short, unsigned short);
extern unsigned char v15 (unsigned short, signed int, signed char);
extern unsigned char (*v16) (unsigned short, signed int, signed char);
unsigned char v17 (unsigned int, signed short, signed char, unsigned char);
unsigned char (*v18) (unsigned int, signed short, signed char, unsigned char) = v17;
unsigned int v19 (signed short, unsigned short, signed int);
unsigned int (*v20) (signed short, unsigned short, signed int) = v19;
extern unsigned short v21 (signed int);
extern unsigned short (*v22) (signed int);
extern signed short v23 (unsigned int, signed short);
extern signed short (*v24) (unsigned int, signed short);
extern signed char v25 (signed short);
extern signed char (*v26) (signed short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed short v29 (signed short, signed short, unsigned char);
extern signed short (*v30) (signed short, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
signed char v32 = -1;
signed char v31 = 2;

unsigned int v19 (signed short v34, unsigned short v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 7U;
signed char v38 = -4;
unsigned char v37 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned int v40, signed short v41, signed char v42, unsigned char v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed short v46 = 3;
signed int v45 = -4;
signed char v44 = 0;
trace++;
switch (trace)
{
case 11: 
return 0;
default: abort ();
}
}
}
}

unsigned short v7 (unsigned char v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
signed short v50 = -4;
signed int v49 = -1;
signed short v48 = 2;
trace++;
switch (trace)
{
case 9: 
return 1;
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
unsigned char v53;
unsigned int v54;
v53 = 6 + v33;
v54 = v1 (v53);
history[history_index++] = (int)v54;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
