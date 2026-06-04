#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
extern unsigned char v3 (unsigned char, unsigned char, signed int, signed short);
extern unsigned char (*v4) (unsigned char, unsigned char, signed int, signed short);
extern signed char v5 (unsigned short, signed int, signed int);
extern signed char (*v6) (unsigned short, signed int, signed int);
extern signed char v7 (void);
extern signed char (*v8) (void);
unsigned int v9 (void);
unsigned int (*v10) (void) = v9;
unsigned int v11 (signed short, signed short, signed int);
unsigned int (*v12) (signed short, signed short, signed int) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern void v19 (signed char, signed char);
extern void (*v20) (signed char, signed char);
extern signed int v21 (signed int, signed int, signed char);
extern signed int (*v22) (signed int, signed int, signed char);
extern signed char v23 (unsigned char, unsigned short);
extern signed char (*v24) (unsigned char, unsigned short);
unsigned short v25 (unsigned short, signed short, signed int, unsigned char);
unsigned short (*v26) (unsigned short, signed short, signed int, unsigned char) = v25;
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
extern unsigned int v29 (unsigned short, signed char, unsigned short, unsigned short);
extern unsigned int (*v30) (unsigned short, signed char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
unsigned short v32 = 7;
signed short v31 = -3;

unsigned char v27 (void)
{
{
for (;;) {
unsigned int v36 = 2U;
signed short v35 = -1;
signed short v34 = -2;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v37;
signed char v38;
unsigned short v39;
unsigned short v40;
unsigned int v41;
v37 = 3 + 4;
v38 = 3 + 1;
v39 = 2 + 7;
v40 = 1 + 5;
v41 = v29 (v37, v38, v39, v40);
history[history_index++] = (int)v41;
}
break;
case 3: 
{
unsigned short v42;
signed char v43;
unsigned short v44;
unsigned short v45;
unsigned int v46;
v42 = 7 + 5;
v43 = 3 + 3;
v44 = 2 - 1;
v45 = 7 - 1;
v46 = v29 (v42, v43, v44, v45);
history[history_index++] = (int)v46;
}
break;
case 5: 
return 2;
default: abort ();
}
}
}
}

unsigned short v25 (unsigned short v47, signed short v48, signed int v49, unsigned char v50)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned int v53 = 6U;
unsigned int v52 = 4U;
signed int v51 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed short v54, signed short v55, signed int v56)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned char v59 = 3;
signed int v58 = -3;
unsigned int v57 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (void)
{
{
for (;;) {
signed short v62 = -2;
unsigned int v61 = 5U;
signed int v60 = -1;
trace++;
switch (trace)
{
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
unsigned short v65;
unsigned int v66;
v65 = 5 + 6;
v66 = v1 (v65);
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
