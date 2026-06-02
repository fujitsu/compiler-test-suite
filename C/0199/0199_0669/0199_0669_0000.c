#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned short);
extern unsigned int (*v2) (signed char, unsigned short);
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
unsigned char v5 (unsigned int, signed int, unsigned char, unsigned short);
unsigned char (*v6) (unsigned int, signed int, unsigned char, unsigned short) = v5;
extern unsigned int v7 (signed int);
extern unsigned int (*v8) (signed int);
signed char v9 (signed short, signed char);
signed char (*v10) (signed short, signed char) = v9;
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned char v13 (unsigned char, signed char);
extern unsigned char (*v14) (unsigned char, signed char);
signed short v15 (signed char);
signed short (*v16) (signed char) = v15;
extern void v17 (unsigned int, unsigned int);
extern void (*v18) (unsigned int, unsigned int);
extern unsigned short v19 (signed short);
extern unsigned short (*v20) (signed short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (unsigned int, unsigned int);
extern unsigned char (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
unsigned short v32 = 1;
signed char v31 = 0;

signed short v15 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 0;
unsigned short v36 = 3;
unsigned int v35 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed short v38, signed char v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 1U;
unsigned char v41 = 2;
signed char v40 = -3;
trace++;
switch (trace)
{
case 9: 
return v40;
case 11: 
return v40;
default: abort ();
}
}
}
}

unsigned char v5 (unsigned int v43, signed int v44, unsigned char v45, unsigned short v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned char v49 = 2;
signed short v48 = 1;
unsigned char v47 = 3;
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
signed char v52;
unsigned short v53;
unsigned int v54;
v52 = v33 - v31;
v53 = v32 - 5;
v54 = v1 (v52, v53);
history[history_index++] = (int)v54;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
