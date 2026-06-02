#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed int, signed int);
extern unsigned short (*v2) (unsigned int, signed int, signed int);
unsigned char v3 (unsigned char, signed char, unsigned short, unsigned int);
unsigned char (*v4) (unsigned char, signed char, unsigned short, unsigned int) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned char v7 (unsigned short, unsigned char);
extern unsigned char (*v8) (unsigned short, unsigned char);
signed int v9 (signed char, unsigned short, signed char, unsigned short);
signed int (*v10) (signed char, unsigned short, signed char, unsigned short) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned char v17 (unsigned int, unsigned int);
extern unsigned char (*v18) (unsigned int, unsigned int);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern unsigned int v27 (signed short, unsigned int, signed int, signed char);
extern unsigned int (*v28) (signed short, unsigned int, signed int, signed char);
unsigned int v29 (unsigned char, unsigned char);
unsigned int (*v30) (unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
unsigned char v32 = 5;
signed char v31 = -1;

unsigned int v29 (unsigned char v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = 2;
unsigned short v37 = 4;
signed int v36 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (signed char v39, unsigned short v40, signed char v41, unsigned short v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 4;
unsigned short v44 = 6;
unsigned int v43 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned char v46, signed char v47, unsigned short v48, unsigned int v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed int v52 = 1;
signed short v51 = -4;
signed short v50 = -1;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v53;
v53 = v11 ();
history[history_index++] = (int)v53;
}
break;
case 7: 
{
unsigned int v54;
v54 = v11 ();
history[history_index++] = (int)v54;
}
break;
case 15: 
return 7;
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
unsigned int v57;
signed int v58;
signed int v59;
unsigned short v60;
v57 = 4U + 4U;
v58 = -2 + 0;
v59 = 1 + -2;
v60 = v1 (v57, v58, v59);
history[history_index++] = (int)v60;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
