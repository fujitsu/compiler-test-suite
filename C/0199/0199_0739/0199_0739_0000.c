#include <stdio.h>
#include <stdlib.h>
static signed int v1 (unsigned int, unsigned short);
static signed int (*v2) (unsigned int, unsigned short) = v1;
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern unsigned char v5 (signed short);
extern unsigned char (*v6) (signed short);
extern signed int v7 (signed char, signed int);
extern signed int (*v8) (signed char, signed int);
extern unsigned char v9 (unsigned int, signed int, signed int);
extern unsigned char (*v10) (unsigned int, signed int, signed int);
extern signed short v11 (unsigned char, signed short, signed char);
extern signed short (*v12) (unsigned char, signed short, signed char);
signed short v13 (signed short, unsigned short, signed char);
signed short (*v14) (signed short, unsigned short, signed char) = v13;
extern signed int v15 (void);
extern signed int (*v16) (void);
void v17 (unsigned int, unsigned short, unsigned int);
void (*v18) (unsigned int, unsigned short, unsigned int) = v17;
signed char v19 (signed int, signed short, signed short, signed int);
signed char (*v20) (signed int, signed short, signed short, signed int) = v19;
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 4;
unsigned short v32 = 2;
unsigned int v31 = 1U;

signed char v19 (signed int v34, signed short v35, signed short v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 6;
unsigned int v39 = 5U;
signed int v38 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned int v41, unsigned short v42, unsigned int v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed short v46 = 1;
unsigned int v45 = 7U;
unsigned char v44 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed short v47, unsigned short v48, signed char v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned int v52 = 6U;
signed char v51 = -3;
signed short v50 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (unsigned int v53, unsigned short v54)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed int v57 = -1;
unsigned char v56 = 7;
unsigned char v55 = 6;
trace++;
switch (trace)
{
case 0: 
{
signed char v58;
signed int v59;
signed int v60;
v58 = 2 + 3;
v59 = 3 + v57;
v60 = v7 (v58, v59);
history[history_index++] = (int)v60;
}
break;
case 14: 
return v57;
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
unsigned int v63;
unsigned short v64;
signed int v65;
v63 = v31 + 2U;
v64 = v33 - v32;
v65 = v1 (v63, v64);
history[history_index++] = (int)v65;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
