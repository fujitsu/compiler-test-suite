#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (signed short, signed char, signed char);
static unsigned char (*v2) (signed short, signed char, signed char) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern void v5 (unsigned short);
extern void (*v6) (unsigned short);
extern void v7 (signed short, unsigned char);
extern void (*v8) (signed short, unsigned char);
unsigned int v9 (unsigned char);
unsigned int (*v10) (unsigned char) = v9;
extern unsigned short v11 (signed short, unsigned char, unsigned short);
extern unsigned short (*v12) (signed short, unsigned char, unsigned short);
extern unsigned short v13 (signed int, signed int);
extern unsigned short (*v14) (signed int, signed int);
extern signed short v15 (signed char, unsigned int, unsigned int);
extern signed short (*v16) (signed char, unsigned int, unsigned int);
extern signed char v17 (signed short, unsigned short);
extern signed char (*v18) (signed short, unsigned short);
extern signed int v19 (unsigned int);
extern signed int (*v20) (unsigned int);
extern void v21 (signed int, signed char, signed int, unsigned int);
extern void (*v22) (signed int, signed char, signed int, unsigned int);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned int v25 (signed int, signed char, signed char, signed short);
extern unsigned int (*v26) (signed int, signed char, signed char, signed short);
extern unsigned char v27 (unsigned int);
extern unsigned char (*v28) (unsigned int);
void v29 (unsigned char, signed short, signed int, signed short);
void (*v30) (unsigned char, signed short, signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
signed int v32 = 3;
unsigned int v31 = 2U;

void v29 (unsigned char v34, signed short v35, signed int v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -3;
unsigned short v39 = 4;
signed int v38 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned char v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 4;
signed int v43 = 0;
unsigned short v42 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (signed short v45, signed char v46, signed char v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed char v50 = -2;
unsigned int v49 = 3U;
signed int v48 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed char v51;
v51 = v23 ();
history[history_index++] = (int)v51;
}
break;
case 2: 
{
signed int v52;
signed int v53;
unsigned short v54;
v52 = v48 - v48;
v53 = v48 + -4;
v54 = v13 (v52, v53);
history[history_index++] = (int)v54;
}
break;
case 14: 
return 5;
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
signed short v57;
signed char v58;
signed char v59;
unsigned char v60;
v57 = 2 - -1;
v58 = -1 - -3;
v59 = 1 + 1;
v60 = v1 (v57, v58, v59);
history[history_index++] = (int)v60;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
