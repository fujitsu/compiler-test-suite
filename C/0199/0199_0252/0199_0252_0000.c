#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed char, unsigned int, signed char, signed short);
extern signed int (*v2) (signed char, unsigned int, signed char, signed short);
extern signed int v3 (signed char, signed short, unsigned int);
extern signed int (*v4) (signed char, signed short, unsigned int);
extern signed short v5 (signed short, unsigned short, unsigned short);
extern signed short (*v6) (signed short, unsigned short, unsigned short);
signed int v7 (signed short);
signed int (*v8) (signed short) = v7;
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern signed char v13 (unsigned int, signed char);
extern signed char (*v14) (unsigned int, signed char);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern unsigned short v17 (unsigned int, signed short, signed short, signed int);
extern unsigned short (*v18) (unsigned int, signed short, signed short, signed int);
extern signed short v19 (signed int);
extern signed short (*v20) (signed int);
unsigned char v21 (signed short, signed char);
unsigned char (*v22) (signed short, signed char) = v21;
extern unsigned int v23 (signed int, unsigned char, signed char);
extern unsigned int (*v24) (signed int, unsigned char, signed char);
extern signed short v25 (signed short);
extern signed short (*v26) (signed short);
extern void v27 (void);
extern void (*v28) (void);
extern signed short v29 (signed short, signed short, signed short);
extern signed short (*v30) (signed short, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
signed short v32 = 0;
signed char v31 = 0;

unsigned char v21 (signed short v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 3;
signed int v37 = -2;
unsigned int v36 = 5U;
trace++;
switch (trace)
{
case 7: 
return v38;
case 11: 
return v38;
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
signed int v41 = -4;
signed short v40 = -3;
unsigned char v39 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed short v42)
{
history[history_index++] = (int)v42;
{
for (;;) {
unsigned int v45 = 7U;
unsigned short v44 = 5;
unsigned char v43 = 3;
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
signed char v48;
unsigned int v49;
signed char v50;
signed short v51;
signed int v52;
v48 = 0 + v33;
v49 = 2U + 2U;
v50 = v33 + v33;
v51 = 0 - -4;
v52 = v1 (v48, v49, v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
