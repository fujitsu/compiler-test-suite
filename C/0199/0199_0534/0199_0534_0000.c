#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned short, signed char, signed short);
extern signed short (*v2) (unsigned short, signed char, signed short);
signed char v3 (unsigned char, unsigned char, signed int, signed int);
signed char (*v4) (unsigned char, unsigned char, signed int, signed int) = v3;
extern signed char v7 (signed char, signed short);
extern signed char (*v8) (signed char, signed short);
signed char v9 (void);
signed char (*v10) (void) = v9;
extern void v11 (unsigned short, unsigned char);
extern void (*v12) (unsigned short, unsigned char);
extern unsigned int v13 (unsigned short, unsigned char);
extern unsigned int (*v14) (unsigned short, unsigned char);
extern signed short v15 (signed char, unsigned int, unsigned char, signed char);
extern signed short (*v16) (signed char, unsigned int, unsigned char, signed char);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern unsigned char v19 (signed int, signed int, unsigned int);
extern unsigned char (*v20) (signed int, signed int, unsigned int);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
unsigned char v25 (signed short, unsigned char, unsigned char);
unsigned char (*v26) (signed short, unsigned char, unsigned char) = v25;
extern signed int v29 (unsigned short, signed short, unsigned int);
extern signed int (*v30) (unsigned short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -2;
unsigned short v32 = 7;
unsigned char v31 = 6;

unsigned char v25 (signed short v34, unsigned char v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = 1;
unsigned char v38 = 4;
unsigned short v37 = 7;
trace++;
switch (trace)
{
case 6: 
return v35;
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
unsigned char v42 = 4;
unsigned short v41 = 5;
unsigned char v40 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned char v43, unsigned char v44, signed int v45, signed int v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed short v49 = 2;
signed int v48 = -3;
signed int v47 = 1;
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
unsigned short v52;
signed char v53;
signed short v54;
signed short v55;
v52 = v32 + v32;
v53 = 2 + 1;
v54 = v33 + v33;
v55 = v1 (v52, v53, v54);
history[history_index++] = (int)v55;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
