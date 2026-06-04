#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int, unsigned int, unsigned short, signed int);
extern signed short (*v2) (signed int, unsigned int, unsigned short, signed int);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
extern unsigned char v7 (signed char, unsigned short, signed short);
extern unsigned char (*v8) (signed char, unsigned short, signed short);
extern unsigned int v9 (signed short, unsigned char, unsigned int, unsigned short);
extern unsigned int (*v10) (signed short, unsigned char, unsigned int, unsigned short);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern signed short v13 (signed int, signed int, unsigned int, signed char);
extern signed short (*v14) (signed int, signed int, unsigned int, signed char);
unsigned char v15 (signed char, unsigned short);
unsigned char (*v16) (signed char, unsigned short) = v15;
extern signed char v17 (signed int, unsigned char, signed short, unsigned char);
extern signed char (*v18) (signed int, unsigned char, signed short, unsigned char);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern unsigned char v21 (signed int);
extern unsigned char (*v22) (signed int);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned char v25 (unsigned int, unsigned short);
extern unsigned char (*v26) (unsigned int, unsigned short);
unsigned int v27 (unsigned int);
unsigned int (*v28) (unsigned int) = v27;
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 4;
unsigned int v32 = 4U;
unsigned int v31 = 2U;

unsigned int v27 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 4;
unsigned char v36 = 4;
unsigned char v35 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (void)
{
{
for (;;) {
unsigned short v40 = 3;
signed short v39 = -2;
signed short v38 = -1;
trace++;
switch (trace)
{
case 3: 
return 3;
case 5: 
return 4;
default: abort ();
}
}
}
}

unsigned char v15 (signed char v41, unsigned short v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned int v45 = 6U;
unsigned int v44 = 4U;
signed char v43 = 3;
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
signed int v48;
unsigned int v49;
unsigned short v50;
signed int v51;
signed short v52;
v48 = -2 + 1;
v49 = v31 - 6U;
v50 = v33 - v33;
v51 = 0 - -3;
v52 = v1 (v48, v49, v50, v51);
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
