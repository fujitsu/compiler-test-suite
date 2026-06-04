#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (signed int, unsigned char, signed int, unsigned int);
static unsigned char (*v2) (signed int, unsigned char, signed int, unsigned int) = v1;
extern unsigned char v3 (unsigned char, unsigned short, signed int, signed char);
extern unsigned char (*v4) (unsigned char, unsigned short, signed int, signed char);
extern void v5 (unsigned char, unsigned char);
extern void (*v6) (unsigned char, unsigned char);
void v7 (unsigned short, signed int, signed short);
void (*v8) (unsigned short, signed int, signed short) = v7;
extern unsigned int v9 (unsigned short, signed int, unsigned short, signed short);
extern unsigned int (*v10) (unsigned short, signed int, unsigned short, signed short);
extern signed char v11 (unsigned short, unsigned short, signed char, signed short);
extern signed char (*v12) (unsigned short, unsigned short, signed char, signed short);
extern signed short v13 (unsigned short, signed int, signed short);
extern signed short (*v14) (unsigned short, signed int, signed short);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v23 (signed short, unsigned short);
extern signed int (*v24) (signed short, unsigned short);
extern unsigned short v25 (unsigned int, unsigned int, unsigned int);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned int);
unsigned int v27 (unsigned int, signed char, signed char, signed char);
unsigned int (*v28) (unsigned int, signed char, signed char, signed char) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -4;
signed char v32 = -4;
unsigned int v31 = 3U;

unsigned int v27 (unsigned int v34, signed char v35, signed char v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -3;
signed int v39 = 2;
signed int v38 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned short v41, signed int v42, signed short v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = -4;
signed short v45 = -2;
unsigned short v44 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (signed int v47, unsigned char v48, signed int v49, unsigned int v50)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed int v53 = -4;
unsigned short v52 = 6;
signed char v51 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v54;
unsigned short v55;
signed char v56;
signed short v57;
signed char v58;
v54 = v52 - 0;
v55 = 7 + 6;
v56 = 3 + v51;
v57 = -2 + -2;
v58 = v11 (v54, v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 6: 
{
unsigned char v59;
unsigned short v60;
v59 = v48 + v48;
v60 = v15 (v59);
history[history_index++] = (int)v60;
}
break;
case 14: 
return v48;
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
signed int v65;
unsigned int v66;
unsigned char v67;
v63 = 0 - -1;
v64 = 6 + 5;
v65 = -3 - 1;
v66 = v31 + 2U;
v67 = v1 (v63, v64, v65, v66);
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
