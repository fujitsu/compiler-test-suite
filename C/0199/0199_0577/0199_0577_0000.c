#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
unsigned char v5 (unsigned short, signed short);
unsigned char (*v6) (unsigned short, signed short) = v5;
void v9 (void);
void (*v10) (void) = v9;
extern void v11 (unsigned char, unsigned int, unsigned char, unsigned char);
extern void (*v12) (unsigned char, unsigned int, unsigned char, unsigned char);
extern signed char v13 (signed char, unsigned short, signed int);
extern signed char (*v14) (signed char, unsigned short, signed int);
unsigned short v15 (unsigned short, unsigned char);
unsigned short (*v16) (unsigned short, unsigned char) = v15;
extern signed int v17 (void);
extern signed int (*v18) (void);
extern void v19 (signed char);
extern void (*v20) (signed char);
extern unsigned int v21 (signed int, unsigned short);
extern unsigned int (*v22) (signed int, unsigned short);
extern unsigned int v23 (unsigned short, signed char);
extern unsigned int (*v24) (unsigned short, signed char);
signed int v25 (signed char, unsigned int, signed char, signed short);
signed int (*v26) (signed char, unsigned int, signed char, signed short) = v25;
extern unsigned char v27 (unsigned int, signed char);
extern unsigned char (*v28) (unsigned int, signed char);
unsigned int v29 (unsigned short);
unsigned int (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 3;
unsigned short v32 = 7;
signed char v31 = 3;

unsigned int v29 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = -2;
unsigned int v36 = 7U;
signed int v35 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (signed char v38, unsigned int v39, signed char v40, signed short v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 5;
signed int v43 = 0;
unsigned short v42 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned short v45, unsigned char v46)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned char v49 = 2;
unsigned char v48 = 6;
signed int v47 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
signed char v52 = -4;
signed char v51 = 1;
unsigned short v50 = 7;
trace++;
switch (trace)
{
case 4: 
return;
case 6: 
{
signed char v53;
unsigned short v54;
signed int v55;
signed char v56;
v53 = v52 + 1;
v54 = 1 - 0;
v55 = 2 + -4;
v56 = v13 (v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 10: 
{
signed int v57;
v57 = v17 ();
history[history_index++] = (int)v57;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned char v5 (unsigned short v58, signed short v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned char v62 = 5;
unsigned short v61 = 6;
signed int v60 = -2;
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
unsigned int v65;
unsigned char v66;
v65 = 6U - 7U;
v66 = v1 (v65);
history[history_index++] = (int)v66;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
