#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (signed char, unsigned short, signed short);
static unsigned short (*v2) (signed char, unsigned short, signed short) = v1;
extern signed char v3 (unsigned short, signed short, unsigned char);
extern signed char (*v4) (unsigned short, signed short, unsigned char);
extern unsigned char v5 (signed char, signed int, unsigned int);
extern unsigned char (*v6) (signed char, signed int, unsigned int);
extern signed int v7 (unsigned int, unsigned short);
extern signed int (*v8) (unsigned int, unsigned short);
signed char v9 (signed char);
signed char (*v10) (signed char) = v9;
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
unsigned int v13 (signed short);
unsigned int (*v14) (signed short) = v13;
extern signed int v15 (signed char, signed int, signed int, signed char);
extern signed int (*v16) (signed char, signed int, signed int, signed char);
void v17 (unsigned char, signed int);
void (*v18) (unsigned char, signed int) = v17;
extern void v19 (unsigned short, signed int);
extern void (*v20) (unsigned short, signed int);
extern signed short v21 (unsigned char, unsigned short, unsigned short);
extern signed short (*v22) (unsigned char, unsigned short, unsigned short);
extern unsigned short v23 (unsigned short);
extern unsigned short (*v24) (unsigned short);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
unsigned short v32 = 1;
unsigned short v31 = 2;

void v17 (unsigned char v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = 1;
signed short v37 = 1;
unsigned int v36 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed short v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 6U;
unsigned int v41 = 6U;
signed char v40 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed char v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
signed short v46 = 0;
signed int v45 = 0;
signed short v44 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v1 (signed char v47, unsigned short v48, signed short v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 7;
signed int v51 = 1;
unsigned char v50 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v53;
signed short v54;
unsigned char v55;
signed char v56;
v53 = v48 + v48;
v54 = -1 + v49;
v55 = 2 + v52;
v56 = v3 (v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 14: 
return 6;
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
signed char v59;
unsigned short v60;
signed short v61;
unsigned short v62;
v59 = 1 + -3;
v60 = v32 - 6;
v61 = -1 - -4;
v62 = v1 (v59, v60, v61);
history[history_index++] = (int)v62;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
