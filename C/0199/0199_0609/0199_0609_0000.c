#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned char);
extern unsigned short (*v2) (unsigned short, unsigned char);
extern signed char v3 (unsigned short, unsigned char);
extern signed char (*v4) (unsigned short, unsigned char);
unsigned char v5 (signed short);
unsigned char (*v6) (signed short) = v5;
static signed char v7 (signed char, unsigned char, unsigned char);
static signed char (*v8) (signed char, unsigned char, unsigned char) = v7;
extern unsigned short v9 (unsigned int, unsigned short);
extern unsigned short (*v10) (unsigned int, unsigned short);
extern unsigned short v11 (unsigned short, signed int);
extern unsigned short (*v12) (unsigned short, signed int);
unsigned char v13 (unsigned char, signed int, unsigned short);
unsigned char (*v14) (unsigned char, signed int, unsigned short) = v13;
extern signed int v15 (void);
extern signed int (*v16) (void);
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
extern void v21 (unsigned short, signed short, unsigned short);
extern void (*v22) (unsigned short, signed short, unsigned short);
signed short v23 (unsigned short);
signed short (*v24) (unsigned short) = v23;
extern unsigned char v25 (unsigned char);
extern unsigned char (*v26) (unsigned char);
extern signed int v29 (signed int, signed short);
extern signed int (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
signed short v32 = -4;
unsigned int v31 = 2U;

signed short v23 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = -4;
unsigned int v36 = 7U;
unsigned int v35 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned char v38, signed int v39, unsigned short v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 6;
unsigned short v42 = 5;
unsigned int v41 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v7 (signed char v44, unsigned char v45, unsigned char v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned short v49 = 1;
unsigned int v48 = 0U;
unsigned short v47 = 0;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v50;
signed int v51;
unsigned short v52;
v50 = v47 + v49;
v51 = 0 + 3;
v52 = v11 (v50, v51);
history[history_index++] = (int)v52;
}
break;
case 14: 
return v44;
default: abort ();
}
}
}
}

unsigned char v5 (signed short v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
unsigned short v56 = 2;
unsigned int v55 = 4U;
signed short v54 = -1;
trace++;
switch (trace)
{
case 5: 
{
signed char v57;
unsigned char v58;
unsigned char v59;
signed char v60;
v57 = 0 + 2;
v58 = 4 + 6;
v59 = 5 - 7;
v60 = v7 (v57, v58, v59);
history[history_index++] = (int)v60;
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
unsigned short v63;
unsigned char v64;
unsigned short v65;
v63 = 2 + 1;
v64 = 7 - 7;
v65 = v1 (v63, v64);
history[history_index++] = (int)v65;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
