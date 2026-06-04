#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed char, signed char);
extern unsigned short (*v2) (unsigned short, signed char, signed char);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
extern signed char v7 (void);
extern signed char (*v8) (void);
signed char v9 (unsigned short);
signed char (*v10) (unsigned short) = v9;
extern unsigned short v11 (unsigned char, signed int, signed char);
extern unsigned short (*v12) (unsigned char, signed int, signed char);
extern signed int v13 (unsigned short);
extern signed int (*v14) (unsigned short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned short v17 (unsigned short, signed short, signed int, signed short);
extern unsigned short (*v18) (unsigned short, signed short, signed int, signed short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned short v21 (signed char, signed int, unsigned short, signed char);
extern unsigned short (*v22) (signed char, signed int, unsigned short, signed char);
unsigned short v23 (unsigned char, signed int, signed char);
unsigned short (*v24) (unsigned char, signed int, signed char) = v23;
extern signed char v25 (unsigned char, signed char, unsigned int, signed char);
extern signed char (*v26) (unsigned char, signed char, unsigned int, signed char);
unsigned short v27 (unsigned short);
unsigned short (*v28) (unsigned short) = v27;
extern unsigned char v29 (signed char, unsigned int, signed char);
extern unsigned char (*v30) (signed char, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
unsigned short v32 = 6;
signed char v31 = 3;

unsigned short v27 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = -1;
unsigned short v36 = 0;
signed short v35 = -1;
trace++;
switch (trace)
{
case 8: 
return 6;
case 10: 
return v34;
default: abort ();
}
}
}
}

unsigned short v23 (unsigned char v38, signed int v39, signed char v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = 1;
unsigned int v42 = 2U;
unsigned short v41 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned short v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
signed short v47 = 2;
unsigned short v46 = 7;
signed char v45 = -2;
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
unsigned short v50;
signed char v51;
signed char v52;
unsigned short v53;
v50 = 3 + 5;
v51 = v31 - -1;
v52 = v31 - v31;
v53 = v1 (v50, v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
