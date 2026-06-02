#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned int v9 (unsigned short, unsigned char, signed char);
extern unsigned int (*v10) (unsigned short, unsigned char, signed char);
extern unsigned int v11 (signed char, unsigned char, signed char);
extern unsigned int (*v12) (signed char, unsigned char, signed char);
void v13 (void);
void (*v14) (void) = v13;
extern void v15 (signed int, unsigned char);
extern void (*v16) (signed int, unsigned char);
signed int v17 (unsigned int, signed int);
signed int (*v18) (unsigned int, signed int) = v17;
extern unsigned char v19 (signed char, signed char, unsigned char);
extern unsigned char (*v20) (signed char, signed char, unsigned char);
extern signed int v21 (unsigned short, unsigned short);
extern signed int (*v22) (unsigned short, unsigned short);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
static void v25 (signed int, signed char);
static void (*v26) (signed int, signed char) = v25;
signed int v27 (signed int);
signed int (*v28) (signed int) = v27;
extern unsigned short v29 (unsigned char, signed short);
extern unsigned short (*v30) (unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
signed char v32 = -4;
unsigned int v31 = 0U;

signed int v27 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = 1;
unsigned int v36 = 4U;
signed char v35 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v25 (signed int v38, signed char v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned char v42 = 1;
unsigned char v41 = 5;
signed short v40 = 2;
trace++;
switch (trace)
{
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

signed int v17 (unsigned int v43, signed int v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 4;
unsigned char v46 = 0;
signed int v45 = -1;
trace++;
switch (trace)
{
case 5: 
{
signed char v48;
signed char v49;
unsigned char v50;
unsigned char v51;
v48 = -4 + 2;
v49 = 3 + -3;
v50 = v47 + 4;
v51 = v19 (v48, v49, v50);
history[history_index++] = (int)v51;
}
break;
case 7: 
{
signed int v52;
signed char v53;
v52 = v45 + v44;
v53 = -4 - 0;
v25 (v52, v53);
}
break;
case 9: 
{
signed int v54;
signed char v55;
v54 = v45 + v44;
v55 = 3 + 0;
v25 (v54, v55);
}
break;
case 11: 
return v44;
default: abort ();
}
}
}
}

void v13 (void)
{
{
for (;;) {
signed short v58 = 2;
unsigned char v57 = 7;
unsigned short v56 = 3;
trace++;
switch (trace)
{
case 2: 
{
signed char v59;
signed char v60;
unsigned char v61;
unsigned char v62;
v59 = -1 + -4;
v60 = 2 - 2;
v61 = 6 - v57;
v62 = v19 (v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 14: 
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
unsigned char v65;
v65 = v1 ();
history[history_index++] = (int)v65;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
