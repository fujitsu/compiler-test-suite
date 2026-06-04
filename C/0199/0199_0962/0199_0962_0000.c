#include <stdio.h>
#include <stdlib.h>
static signed char v1 (void);
static signed char (*v2) (void) = v1;
extern signed char v3 (signed short, signed char);
extern signed char (*v4) (signed short, signed char);
extern unsigned int v5 (unsigned int, signed char, signed short, signed short);
extern unsigned int (*v6) (unsigned int, signed char, signed short, signed short);
extern unsigned short v7 (unsigned int, unsigned short, unsigned char, unsigned char);
extern unsigned short (*v8) (unsigned int, unsigned short, unsigned char, unsigned char);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned short v11 (signed short, signed short, signed short, unsigned short);
extern unsigned short (*v12) (signed short, signed short, signed short, unsigned short);
signed int v13 (signed char, unsigned int, unsigned char);
signed int (*v14) (signed char, unsigned int, unsigned char) = v13;
extern unsigned short v15 (signed int);
extern unsigned short (*v16) (signed int);
signed int v19 (signed short, unsigned short);
signed int (*v20) (signed short, unsigned short) = v19;
extern unsigned char v21 (unsigned int, signed short, signed char);
extern unsigned char (*v22) (unsigned int, signed short, signed char);
extern signed char v23 (signed int, unsigned int, unsigned int, unsigned short);
extern signed char (*v24) (signed int, unsigned int, unsigned int, unsigned short);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed char v27 (signed short, unsigned short, unsigned short, unsigned short);
extern signed char (*v28) (signed short, unsigned short, unsigned short, unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 3;
unsigned short v32 = 5;
signed int v31 = -1;

signed int v19 (signed short v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = -4;
signed char v37 = 1;
unsigned char v36 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed char v39, unsigned int v40, unsigned char v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned char v44 = 0;
signed int v43 = -1;
unsigned char v42 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (void)
{
{
for (;;) {
signed int v47 = -1;
unsigned char v46 = 0;
signed int v45 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v48;
signed short v49;
signed char v50;
unsigned char v51;
v48 = 3U - 4U;
v49 = 0 - -1;
v50 = -3 + -2;
v51 = v21 (v48, v49, v50);
history[history_index++] = (int)v51;
}
break;
case 4: 
{
unsigned int v52;
signed char v53;
signed short v54;
signed short v55;
unsigned int v56;
v52 = 5U - 6U;
v53 = -1 + -4;
v54 = -2 + -1;
v55 = 0 + 3;
v56 = v5 (v52, v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 12: 
return 1;
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
v59 = v1 ();
history[history_index++] = (int)v59;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
