#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short, signed int, signed int);
extern signed int (*v2) (signed short, signed int, signed int);
extern signed short v3 (signed int, unsigned char, unsigned int, unsigned char);
extern signed short (*v4) (signed int, unsigned char, unsigned int, unsigned char);
void v7 (void);
void (*v8) (void) = v7;
extern unsigned char v9 (unsigned int, unsigned char, unsigned short);
extern unsigned char (*v10) (unsigned int, unsigned char, unsigned short);
signed short v11 (signed char, unsigned short, unsigned char, unsigned int);
signed short (*v12) (signed char, unsigned short, unsigned char, unsigned int) = v11;
extern signed short v13 (unsigned short, signed int);
extern signed short (*v14) (unsigned short, signed int);
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
unsigned int v17 (signed char, unsigned int, signed char, unsigned int);
unsigned int (*v18) (signed char, unsigned int, signed char, unsigned int) = v17;
extern signed int v19 (unsigned char, unsigned short, signed char, unsigned char);
extern signed int (*v20) (unsigned char, unsigned short, signed char, unsigned char);
extern unsigned int v21 (signed char, signed int);
extern unsigned int (*v22) (signed char, signed int);
extern signed short v23 (signed int, unsigned short, signed int, unsigned short);
extern signed short (*v24) (signed int, unsigned short, signed int, unsigned short);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
unsigned short v27 (unsigned int, signed short, signed int);
unsigned short (*v28) (unsigned int, signed short, signed int) = v27;
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 0;
signed short v32 = 2;
signed char v31 = -1;

unsigned short v27 (unsigned int v34, signed short v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 4;
signed short v38 = -1;
signed char v37 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed char v40, unsigned int v41, signed char v42, unsigned int v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = -4;
unsigned int v45 = 0U;
unsigned char v44 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed char v47, unsigned short v48, unsigned char v49, unsigned int v50)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned short v53 = 7;
unsigned char v52 = 5;
signed short v51 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
signed char v56 = -1;
signed int v55 = 1;
signed short v54 = 1;
trace++;
switch (trace)
{
case 10: 
{
unsigned char v57;
unsigned short v58;
signed char v59;
unsigned char v60;
signed int v61;
v57 = 1 + 2;
v58 = 2 + 1;
v59 = -1 - 1;
v60 = 2 - 7;
v61 = v19 (v57, v58, v59, v60);
history[history_index++] = (int)v61;
}
break;
case 12: 
return;
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
signed short v64;
signed int v65;
signed int v66;
signed int v67;
v64 = v32 - 2;
v65 = -2 - -1;
v66 = 0 + -3;
v67 = v1 (v64, v65, v66);
history[history_index++] = (int)v67;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
