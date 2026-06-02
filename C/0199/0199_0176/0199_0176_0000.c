#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
void v3 (signed char, unsigned short, unsigned short);
void (*v4) (signed char, unsigned short, unsigned short) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned char v7 (signed short, unsigned int, signed char, signed short);
extern unsigned char (*v8) (signed short, unsigned int, signed char, signed short);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned short v11 (unsigned int);
extern unsigned short (*v12) (unsigned int);
signed int v13 (unsigned int, signed short, unsigned short, unsigned char);
signed int (*v14) (unsigned int, signed short, unsigned short, unsigned char) = v13;
signed short v15 (unsigned short, unsigned int, signed char);
signed short (*v16) (unsigned short, unsigned int, signed char) = v15;
extern signed int v17 (signed char, signed int, unsigned int, signed short);
extern signed int (*v18) (signed char, signed int, unsigned int, signed short);
extern signed int v19 (signed char, unsigned int, signed char, signed int);
extern signed int (*v20) (signed char, unsigned int, signed char, signed int);
extern signed int v21 (unsigned char, signed char, signed char);
extern signed int (*v22) (unsigned char, signed char, signed char);
unsigned int v23 (unsigned char, unsigned char, signed short);
unsigned int (*v24) (unsigned char, unsigned char, signed short) = v23;
extern void v25 (unsigned char);
extern void (*v26) (unsigned char);
extern signed char v27 (unsigned char, signed int, signed short);
extern signed char (*v28) (unsigned char, signed int, signed short);
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
signed char v32 = 3;
unsigned char v31 = 4;

unsigned short v29 (void)
{
{
for (;;) {
unsigned char v36 = 2;
signed short v35 = -4;
unsigned short v34 = 2;
trace++;
switch (trace)
{
case 7: 
return v34;
case 9: 
return v34;
case 11: 
return v34;
default: abort ();
}
}
}
}

unsigned int v23 (unsigned char v37, unsigned char v38, signed short v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned char v42 = 1;
unsigned short v41 = 6;
signed short v40 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned short v43, unsigned int v44, signed char v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned int v48 = 4U;
unsigned short v47 = 4;
unsigned char v46 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned int v49, signed short v50, unsigned short v51, unsigned char v52)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned short v55 = 6;
unsigned int v54 = 6U;
unsigned char v53 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v56;
v56 = 1 + v52;
v25 (v56);
}
break;
case 3: 
{
unsigned char v57;
v57 = v53 + v52;
v25 (v57);
}
break;
case 5: 
{
unsigned char v58;
v58 = v52 - v53;
v25 (v58);
}
break;
case 13: 
return -1;
default: abort ();
}
}
}
}

void v3 (signed char v59, unsigned short v60, unsigned short v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned char v64 = 2;
signed char v63 = 1;
unsigned char v62 = 3;
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
unsigned char v67;
v67 = v1 ();
history[history_index++] = (int)v67;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
