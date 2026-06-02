#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed short);
extern unsigned short (*v2) (unsigned int, signed short);
extern signed char v3 (unsigned int, signed char);
extern signed char (*v4) (unsigned int, signed char);
extern void v5 (unsigned char, signed short);
extern void (*v6) (unsigned char, signed short);
extern unsigned short v7 (unsigned short, unsigned short, unsigned short, signed char);
extern unsigned short (*v8) (unsigned short, unsigned short, unsigned short, signed char);
extern unsigned char v9 (unsigned char, unsigned char, signed char);
extern unsigned char (*v10) (unsigned char, unsigned char, signed char);
extern void v11 (signed short, signed char);
extern void (*v12) (signed short, signed char);
unsigned char v13 (unsigned short, signed int);
unsigned char (*v14) (unsigned short, signed int) = v13;
extern signed short v15 (unsigned int, unsigned char);
extern signed short (*v16) (unsigned int, unsigned char);
extern unsigned char v17 (signed int);
extern unsigned char (*v18) (signed int);
unsigned char v19 (signed short, unsigned int);
unsigned char (*v20) (signed short, unsigned int) = v19;
static signed char v21 (signed char, signed int, unsigned short);
static signed char (*v22) (signed char, signed int, unsigned short) = v21;
extern void v23 (void);
extern void (*v24) (void);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern unsigned int v27 (signed char, unsigned char, signed char, unsigned char);
extern unsigned int (*v28) (signed char, unsigned char, signed char, unsigned char);
unsigned char v29 (void);
unsigned char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 5U;
signed int v32 = -2;
signed short v31 = -3;

unsigned char v29 (void)
{
{
for (;;) {
unsigned char v36 = 1;
signed int v35 = 1;
unsigned short v34 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v21 (signed char v37, signed int v38, unsigned short v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned char v42 = 2;
signed char v41 = -3;
signed char v40 = -1;
trace++;
switch (trace)
{
case 4: 
return v37;
default: abort ();
}
}
}
}

unsigned char v19 (signed short v43, unsigned int v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed short v47 = -3;
unsigned short v46 = 3;
unsigned int v45 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned short v48, signed int v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 6;
unsigned short v51 = 7;
unsigned short v50 = 4;
trace++;
switch (trace)
{
case 1: 
{
signed int v53;
signed char v54;
v53 = v49 - v49;
v54 = v25 (v53);
history[history_index++] = (int)v54;
}
break;
case 3: 
{
signed char v55;
signed int v56;
unsigned short v57;
signed char v58;
v55 = -2 + -4;
v56 = 3 - v49;
v57 = v48 - v51;
v58 = v21 (v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 5: 
{
signed int v59;
signed char v60;
v59 = 2 + -2;
v60 = v25 (v59);
history[history_index++] = (int)v60;
}
break;
case 7: 
{
signed int v61;
signed char v62;
v61 = v49 - -4;
v62 = v25 (v61);
history[history_index++] = (int)v62;
}
break;
case 9: 
return v52;
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
signed short v66;
unsigned short v67;
v65 = v33 + v33;
v66 = -4 + -2;
v67 = v1 (v65, v66);
history[history_index++] = (int)v67;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
