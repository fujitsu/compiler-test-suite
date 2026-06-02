#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned char);
extern unsigned int (*v2) (unsigned short, unsigned char);
void v3 (void);
void (*v4) (void) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned int v7 (unsigned short, unsigned char, unsigned short);
extern unsigned int (*v8) (unsigned short, unsigned char, unsigned short);
extern signed char v9 (signed char, signed char, signed char, signed char);
extern signed char (*v10) (signed char, signed char, signed char, signed char);
extern unsigned char v11 (unsigned int, unsigned int, signed char);
extern unsigned char (*v12) (unsigned int, unsigned int, signed char);
signed char v13 (unsigned short, signed char, signed short);
signed char (*v14) (unsigned short, signed char, signed short) = v13;
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
extern signed short v17 (void);
extern signed short (*v18) (void);
extern void v19 (signed short);
extern void (*v20) (signed short);
unsigned int v21 (signed char, signed short);
unsigned int (*v22) (signed char, signed short) = v21;
extern signed char v23 (unsigned short, unsigned char, unsigned char);
extern signed char (*v24) (unsigned short, unsigned char, unsigned char);
extern signed char v27 (unsigned short, unsigned char, unsigned char);
extern signed char (*v28) (unsigned short, unsigned char, unsigned char);
extern void v29 (unsigned int);
extern void (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 5U;
unsigned int v32 = 5U;
signed char v31 = -3;

unsigned int v21 (signed char v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = 2;
unsigned char v37 = 0;
signed int v36 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (void)
{
{
for (;;) {
signed int v41 = -1;
signed short v40 = -1;
unsigned int v39 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned short v42, signed char v43, signed short v44)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed short v47 = 0;
unsigned short v46 = 2;
unsigned short v45 = 4;
trace++;
switch (trace)
{
case 3: 
{
signed short v48;
v48 = v17 ();
history[history_index++] = (int)v48;
}
break;
case 5: 
{
unsigned short v49;
unsigned char v50;
unsigned char v51;
signed char v52;
v49 = v42 - v46;
v50 = 4 - 4;
v51 = 5 - 3;
v52 = v23 (v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 7: 
{
unsigned short v53;
unsigned char v54;
unsigned char v55;
signed char v56;
v53 = 3 - 4;
v54 = 1 + 2;
v55 = 3 - 5;
v56 = v23 (v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 9: 
{
unsigned short v57;
unsigned char v58;
unsigned char v59;
signed char v60;
v57 = v46 + v42;
v58 = 6 + 6;
v59 = 2 + 2;
v60 = v23 (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 11: 
return v43;
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
signed short v63 = -1;
signed char v62 = -3;
unsigned char v61 = 3;
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
unsigned short v66;
unsigned char v67;
unsigned int v68;
v66 = 5 - 0;
v67 = 7 - 7;
v68 = v1 (v66, v67);
history[history_index++] = (int)v68;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
