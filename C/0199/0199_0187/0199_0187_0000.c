#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned char);
extern signed short (*v2) (unsigned char);
signed char v3 (signed short, signed char, signed int, signed short);
signed char (*v4) (signed short, signed char, signed int, signed short) = v3;
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
extern signed int v7 (unsigned char, unsigned char, unsigned short, signed short);
extern signed int (*v8) (unsigned char, unsigned char, unsigned short, signed short);
extern unsigned short v9 (unsigned char, signed char);
extern unsigned short (*v10) (unsigned char, signed char);
signed char v11 (unsigned int, unsigned int);
signed char (*v12) (unsigned int, unsigned int) = v11;
extern signed int v13 (unsigned short, unsigned int, signed char, signed char);
extern signed int (*v14) (unsigned short, unsigned int, signed char, signed char);
signed short v15 (unsigned short, unsigned short, signed short);
signed short (*v16) (unsigned short, unsigned short, signed short) = v15;
extern unsigned int v17 (unsigned short, unsigned short, unsigned char);
extern unsigned int (*v18) (unsigned short, unsigned short, unsigned char);
extern unsigned int v19 (signed int, unsigned char, signed int, unsigned int);
extern unsigned int (*v20) (signed int, unsigned char, signed int, unsigned int);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern unsigned int v23 (unsigned int, signed short, unsigned short, signed char);
extern unsigned int (*v24) (unsigned int, signed short, unsigned short, signed char);
extern signed int v25 (signed short, unsigned short);
extern signed int (*v26) (signed short, unsigned short);
extern unsigned int v27 (signed short, signed int, unsigned short);
extern unsigned int (*v28) (signed short, signed int, unsigned short);
extern signed char v29 (unsigned char);
extern signed char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
unsigned short v32 = 2;
signed int v31 = 2;

unsigned short v21 (void)
{
{
for (;;) {
signed short v36 = -1;
unsigned char v35 = 5;
unsigned short v34 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned short v37, unsigned short v38, signed short v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed short v42 = 3;
unsigned int v41 = 6U;
unsigned int v40 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned int v43, unsigned int v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed char v47 = 0;
unsigned int v46 = 5U;
signed short v45 = 2;
trace++;
switch (trace)
{
case 6: 
return 1;
case 10: 
return 1;
default: abort ();
}
}
}
}

signed char v3 (signed short v48, signed char v49, signed int v50, signed short v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned int v54 = 4U;
signed int v53 = 0;
unsigned int v52 = 6U;
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
unsigned char v57;
signed short v58;
v57 = 0 + 6;
v58 = v1 (v57);
history[history_index++] = (int)v58;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
