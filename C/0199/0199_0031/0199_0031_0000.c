#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed short, signed char, signed short);
extern signed short (*v2) (signed short, signed char, signed short);
extern signed short v3 (unsigned int, unsigned char);
extern signed short (*v4) (unsigned int, unsigned char);
extern unsigned int v5 (unsigned int, unsigned int, unsigned int);
extern unsigned int (*v6) (unsigned int, unsigned int, unsigned int);
extern signed int v7 (signed short, signed int, signed char);
extern signed int (*v8) (signed short, signed int, signed char);
extern signed short v9 (unsigned char, unsigned char, signed int, signed int);
extern signed short (*v10) (unsigned char, unsigned char, signed int, signed int);
unsigned int v11 (unsigned int, unsigned int, signed int);
unsigned int (*v12) (unsigned int, unsigned int, signed int) = v11;
extern signed short v13 (unsigned char, signed int, unsigned short);
extern signed short (*v14) (unsigned char, signed int, unsigned short);
extern signed int v15 (signed int, unsigned char);
extern signed int (*v16) (signed int, unsigned char);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned int v21 (unsigned int, signed char, signed char, signed short);
extern unsigned int (*v22) (unsigned int, signed char, signed char, signed short);
signed short v23 (void);
signed short (*v24) (void) = v23;
extern signed int v25 (signed int, unsigned char, unsigned short, unsigned char);
extern signed int (*v26) (signed int, unsigned char, unsigned short, unsigned char);
unsigned int v27 (signed short, unsigned short, unsigned short, signed short);
unsigned int (*v28) (signed short, unsigned short, unsigned short, signed short) = v27;
extern unsigned int v29 (unsigned char);
extern unsigned int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
signed int v32 = 3;
unsigned short v31 = 7;

unsigned int v27 (signed short v34, unsigned short v35, unsigned short v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 7;
signed int v39 = 3;
signed char v38 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (void)
{
{
for (;;) {
unsigned char v43 = 0;
signed int v42 = -2;
unsigned short v41 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned int v44, unsigned int v45, signed int v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed int v49 = 1;
signed short v48 = -1;
signed short v47 = 1;
trace++;
switch (trace)
{
case 7: 
{
signed short v50;
v50 = v17 ();
history[history_index++] = (int)v50;
}
break;
case 9: 
return v45;
case 11: 
return v45;
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
signed short v53;
signed char v54;
signed short v55;
signed short v56;
v53 = 0 - 1;
v54 = 2 + -1;
v55 = 2 + -1;
v56 = v1 (v53, v54, v55);
history[history_index++] = (int)v56;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
