#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (unsigned short, unsigned short, unsigned int, signed char);
static unsigned short (*v2) (unsigned short, unsigned short, unsigned int, signed char) = v1;
extern unsigned short v3 (unsigned char, signed char, unsigned int);
extern unsigned short (*v4) (unsigned char, signed char, unsigned int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern void v7 (signed int, signed int);
extern void (*v8) (signed int, signed int);
unsigned char v9 (signed short);
unsigned char (*v10) (signed short) = v9;
extern unsigned short v11 (signed short, signed int);
extern unsigned short (*v12) (signed short, signed int);
signed char v13 (unsigned char, signed int, signed short);
signed char (*v14) (unsigned char, signed int, signed short) = v13;
signed int v15 (unsigned int, unsigned int, signed int, signed int);
signed int (*v16) (unsigned int, unsigned int, signed int, signed int) = v15;
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
extern signed short v19 (unsigned int, unsigned int, unsigned short);
extern signed short (*v20) (unsigned int, unsigned int, unsigned short);
extern unsigned short v23 (signed int, unsigned char, unsigned int, signed int);
extern unsigned short (*v24) (signed int, unsigned char, unsigned int, signed int);
extern unsigned short v27 (unsigned int, signed short, signed int);
extern unsigned short (*v28) (unsigned int, signed short, signed int);
extern unsigned int v29 (signed char, signed short);
extern unsigned int (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 0U;
unsigned int v32 = 0U;
signed int v31 = 2;

signed int v15 (unsigned int v34, unsigned int v35, signed int v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 3;
unsigned short v39 = 0;
unsigned int v38 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned char v41, signed int v42, signed short v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned short v46 = 1;
unsigned char v45 = 4;
signed char v44 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed short v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
unsigned int v50 = 5U;
signed char v49 = 0;
unsigned short v48 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v1 (unsigned short v51, unsigned short v52, unsigned int v53, signed char v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed int v57 = 1;
unsigned int v56 = 2U;
signed char v55 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v58;
signed char v59;
unsigned int v60;
unsigned short v61;
v58 = 5 + 2;
v59 = 1 + v55;
v60 = v53 + 3U;
v61 = v3 (v58, v59, v60);
history[history_index++] = (int)v61;
}
break;
case 12: 
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
unsigned short v64;
unsigned short v65;
unsigned int v66;
signed char v67;
unsigned short v68;
v64 = 0 - 7;
v65 = 1 + 5;
v66 = v33 + 7U;
v67 = 2 - -4;
v68 = v1 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
