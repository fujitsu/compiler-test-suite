#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (unsigned short, signed char, signed int, signed short);
static unsigned short (*v2) (unsigned short, signed char, signed int, signed short) = v1;
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
static unsigned short v5 (signed short, unsigned short);
static unsigned short (*v6) (signed short, unsigned short) = v5;
extern unsigned short v7 (signed char, unsigned char, unsigned int);
extern unsigned short (*v8) (signed char, unsigned char, unsigned int);
extern unsigned char v9 (unsigned int, signed short);
extern unsigned char (*v10) (unsigned int, signed short);
unsigned char v11 (unsigned char, signed short, signed char, signed short);
unsigned char (*v12) (unsigned char, signed short, signed char, signed short) = v11;
extern unsigned short v13 (unsigned int, signed short, signed char);
extern unsigned short (*v14) (unsigned int, signed short, signed char);
extern signed char v15 (unsigned char);
extern signed char (*v16) (unsigned char);
extern unsigned short v17 (unsigned int, signed int);
extern unsigned short (*v18) (unsigned int, signed int);
extern signed int v19 (unsigned short);
extern signed int (*v20) (unsigned short);
extern unsigned int v21 (unsigned char, unsigned int, unsigned int, signed int);
extern unsigned int (*v22) (unsigned char, unsigned int, unsigned int, signed int);
void v23 (unsigned short, signed char, signed char);
void (*v24) (unsigned short, signed char, signed char) = v23;
extern unsigned short v25 (unsigned short, signed int, unsigned int);
extern unsigned short (*v26) (unsigned short, signed int, unsigned int);
extern signed int v29 (signed char, signed short);
extern signed int (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 1;
unsigned short v32 = 5;
unsigned char v31 = 3;

void v23 (unsigned short v34, signed char v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = -4;
signed char v38 = 2;
signed short v37 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned char v40, signed short v41, signed char v42, signed short v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 5;
signed char v45 = -3;
signed char v44 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v5 (signed short v47, unsigned short v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned short v51 = 7;
unsigned short v50 = 0;
unsigned short v49 = 4;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}

static unsigned short v1 (unsigned short v52, signed char v53, signed int v54, signed short v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned short v58 = 3;
signed short v57 = -1;
unsigned int v56 = 6U;
trace++;
switch (trace)
{
case 0: 
{
signed short v59;
unsigned short v60;
unsigned short v61;
v59 = v57 + -1;
v60 = 5 + v52;
v61 = v5 (v59, v60);
history[history_index++] = (int)v61;
}
break;
case 2: 
{
unsigned short v62;
signed int v63;
v62 = v58 + 7;
v63 = v19 (v62);
history[history_index++] = (int)v63;
}
break;
case 14: 
return 3;
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
unsigned short v66;
signed char v67;
signed int v68;
signed short v69;
unsigned short v70;
v66 = 5 - 0;
v67 = -3 + -3;
v68 = -4 + 1;
v69 = 3 - -4;
v70 = v1 (v66, v67, v68, v69);
history[history_index++] = (int)v70;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
