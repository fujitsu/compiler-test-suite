#include <stdio.h>
#include <stdlib.h>
static signed int v1 (void);
static signed int (*v2) (void) = v1;
extern signed char v3 (unsigned short, signed int, unsigned char);
extern signed char (*v4) (unsigned short, signed int, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned char v7 (unsigned short, signed short, signed char, unsigned char);
extern unsigned char (*v8) (unsigned short, signed short, signed char, unsigned char);
extern unsigned char v9 (signed short, signed char, unsigned char);
extern unsigned char (*v10) (signed short, signed char, unsigned char);
extern unsigned short v11 (signed short, signed short);
extern unsigned short (*v12) (signed short, signed short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed int v17 (signed short);
extern signed int (*v18) (signed short);
extern signed short v19 (signed short, unsigned short, signed short, unsigned short);
extern signed short (*v20) (signed short, unsigned short, signed short, unsigned short);
extern unsigned char v21 (signed char);
extern unsigned char (*v22) (signed char);
extern unsigned short v23 (signed int, unsigned char, signed short, signed char);
extern unsigned short (*v24) (signed int, unsigned char, signed short, signed char);
signed int v25 (unsigned int, unsigned short);
signed int (*v26) (unsigned int, unsigned short) = v25;
signed short v27 (unsigned short, unsigned int, unsigned int, signed char);
signed short (*v28) (unsigned short, unsigned int, unsigned int, signed char) = v27;
signed short v29 (signed char);
signed short (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
signed char v32 = 0;
signed int v31 = 3;

signed short v29 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = -2;
signed short v36 = -1;
signed char v35 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v27 (unsigned short v38, unsigned int v39, unsigned int v40, signed char v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = -4;
signed int v43 = -2;
unsigned short v42 = 6;
trace++;
switch (trace)
{
case 6: 
return -3;
default: abort ();
}
}
}
}

signed int v25 (unsigned int v45, unsigned short v46)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned char v49 = 1;
signed short v48 = -2;
signed int v47 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (void)
{
{
for (;;) {
unsigned short v52 = 6;
signed char v51 = -3;
signed char v50 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v53;
signed int v54;
unsigned char v55;
signed char v56;
v53 = 2 - v52;
v54 = -4 - -1;
v55 = 2 - 4;
v56 = v3 (v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 16: 
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
signed int v59;
v59 = v1 ();
history[history_index++] = (int)v59;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
