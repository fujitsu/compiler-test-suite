#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed short);
extern unsigned short (*v2) (unsigned short, signed short);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (signed short, unsigned char);
extern unsigned char (*v6) (signed short, unsigned char);
signed char v7 (unsigned int, signed short, signed short);
signed char (*v8) (unsigned int, signed short, signed short) = v7;
extern signed short v9 (unsigned int);
extern signed short (*v10) (unsigned int);
extern unsigned int v11 (signed int, signed int);
extern unsigned int (*v12) (signed int, signed int);
extern unsigned int v13 (unsigned short, unsigned int);
extern unsigned int (*v14) (unsigned short, unsigned int);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned char v17 (signed int, signed short, signed short);
extern unsigned char (*v18) (signed int, signed short, signed short);
extern unsigned int v19 (signed int, signed short);
extern unsigned int (*v20) (signed int, signed short);
void v21 (signed char, signed short, signed short, signed short);
void (*v22) (signed char, signed short, signed short, signed short) = v21;
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned int v25 (unsigned char, signed int, signed short, signed int);
extern unsigned int (*v26) (unsigned char, signed int, signed short, signed int);
extern unsigned int v27 (signed short, signed short, signed short);
extern unsigned int (*v28) (signed short, signed short, signed short);
void v29 (signed char, unsigned int, signed char, signed short);
void (*v30) (signed char, unsigned int, signed char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
unsigned short v32 = 5;
signed int v31 = -1;

void v29 (signed char v34, unsigned int v35, signed char v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 0U;
unsigned char v39 = 4;
signed char v38 = -3;
trace++;
switch (trace)
{
case 1: 
{
signed int v41;
signed short v42;
unsigned int v43;
v41 = 0 + -1;
v42 = -3 - -2;
v43 = v19 (v41, v42);
history[history_index++] = (int)v43;
}
break;
case 3: 
{
signed int v44;
signed short v45;
unsigned int v46;
v44 = 3 - -3;
v45 = 1 + -4;
v46 = v19 (v44, v45);
history[history_index++] = (int)v46;
}
break;
case 5: 
{
signed int v47;
signed short v48;
unsigned int v49;
v47 = 2 - -2;
v48 = v37 + v37;
v49 = v19 (v47, v48);
history[history_index++] = (int)v49;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

void v21 (signed char v50, signed short v51, signed short v52, signed short v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 4U;
unsigned short v55 = 7;
unsigned short v54 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned int v57, signed short v58, signed short v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 4;
signed short v61 = -4;
unsigned int v60 = 4U;
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
signed short v66;
unsigned short v67;
v65 = v32 + 1;
v66 = 1 + 0;
v67 = v1 (v65, v66);
history[history_index++] = (int)v67;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
