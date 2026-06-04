#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned short, unsigned char, unsigned char);
extern unsigned char (*v2) (signed char, unsigned short, unsigned char, unsigned char);
void v3 (signed char, unsigned char, unsigned short);
void (*v4) (signed char, unsigned char, unsigned short) = v3;
signed int v5 (unsigned short, unsigned short);
signed int (*v6) (unsigned short, unsigned short) = v5;
extern void v9 (unsigned short, signed char, unsigned int);
extern void (*v10) (unsigned short, signed char, unsigned int);
signed short v11 (signed char, signed int);
signed short (*v12) (signed char, signed int) = v11;
extern signed short v13 (unsigned short, signed char, unsigned short, signed short);
extern signed short (*v14) (unsigned short, signed char, unsigned short, signed short);
unsigned char v15 (signed int, unsigned int, signed char, signed int);
unsigned char (*v16) (signed int, unsigned int, signed char, signed int) = v15;
extern signed char v17 (unsigned int, signed char, unsigned char, unsigned char);
extern signed char (*v18) (unsigned int, signed char, unsigned char, unsigned char);
extern unsigned char v19 (unsigned int);
extern unsigned char (*v20) (unsigned int);
extern signed short v21 (unsigned int, unsigned short);
extern signed short (*v22) (unsigned int, unsigned short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned char v25 (unsigned char, signed int);
extern unsigned char (*v26) (unsigned char, signed int);
extern void v27 (signed short, unsigned short, signed int, unsigned int);
extern void (*v28) (signed short, unsigned short, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
unsigned int v32 = 5U;
unsigned char v31 = 2;

unsigned char v15 (signed int v34, unsigned int v35, signed char v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 7;
unsigned int v39 = 0U;
signed short v38 = -3;
trace++;
switch (trace)
{
case 2: 
return 5;
case 9: 
return 3;
default: abort ();
}
}
}
}

signed short v11 (signed char v41, signed int v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed short v45 = -4;
unsigned char v44 = 1;
signed int v43 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned short v46, unsigned short v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed char v50 = 3;
unsigned char v49 = 1;
unsigned char v48 = 1;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v51;
signed char v52;
unsigned char v53;
unsigned char v54;
signed char v55;
v51 = 0U + 6U;
v52 = v50 - v50;
v53 = v48 + v49;
v54 = v49 - v48;
v55 = v17 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

void v3 (signed char v56, unsigned char v57, unsigned short v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned char v61 = 0;
unsigned char v60 = 0;
unsigned short v59 = 7;
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
signed char v64;
unsigned short v65;
unsigned char v66;
unsigned char v67;
unsigned char v68;
v64 = -4 + 3;
v65 = 0 - 6;
v66 = 0 + v31;
v67 = 7 - v31;
v68 = v1 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
