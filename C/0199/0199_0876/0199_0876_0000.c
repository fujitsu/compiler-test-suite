#include <stdio.h>
#include <stdlib.h>
static signed int v1 (signed int, unsigned char, signed char);
static signed int (*v2) (signed int, unsigned char, signed char) = v1;
extern unsigned char v3 (signed int, signed short, unsigned char);
extern unsigned char (*v4) (signed int, signed short, unsigned char);
unsigned short v5 (signed short, unsigned char, unsigned int, signed char);
unsigned short (*v6) (signed short, unsigned char, unsigned int, signed char) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed short v9 (unsigned char, signed short, signed char, unsigned short);
extern signed short (*v10) (unsigned char, signed short, signed char, unsigned short);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
unsigned int v13 (signed char, unsigned short, unsigned char);
unsigned int (*v14) (signed char, unsigned short, unsigned char) = v13;
extern unsigned int v15 (signed int, unsigned char, unsigned short);
extern unsigned int (*v16) (signed int, unsigned char, unsigned short);
signed int v17 (signed char);
signed int (*v18) (signed char) = v17;
extern unsigned short v19 (signed char, unsigned char, signed int, unsigned char);
extern unsigned short (*v20) (signed char, unsigned char, signed int, unsigned char);
extern signed int v21 (unsigned short, unsigned short);
extern signed int (*v22) (unsigned short, unsigned short);
extern void v23 (signed int, signed int, signed short);
extern void (*v24) (signed int, signed int, signed short);
extern unsigned short v25 (signed int, signed short, signed short, signed int);
extern unsigned short (*v26) (signed int, signed short, signed short, signed int);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed int v29 (unsigned short, unsigned int, signed short);
extern signed int (*v30) (unsigned short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
signed short v32 = 1;
unsigned short v31 = 5;

signed int v17 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = 0;
unsigned short v36 = 0;
signed short v35 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed char v38, unsigned short v39, unsigned char v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = 3;
unsigned short v42 = 4;
signed int v41 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed short v44, unsigned char v45, unsigned int v46, signed char v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = -2;
signed short v49 = 2;
signed int v48 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (signed int v51, unsigned char v52, signed char v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 6U;
signed short v55 = 0;
signed short v54 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v57;
v57 = v11 ();
history[history_index++] = (int)v57;
}
break;
case 2: 
{
unsigned short v58;
unsigned short v59;
signed int v60;
v58 = 2 - 4;
v59 = 3 - 6;
v60 = v21 (v58, v59);
history[history_index++] = (int)v60;
}
break;
case 12: 
return -4;
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
signed int v63;
unsigned char v64;
signed char v65;
signed int v66;
v63 = -1 + -3;
v64 = v33 + v33;
v65 = 2 + 2;
v66 = v1 (v63, v64, v65);
history[history_index++] = (int)v66;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
