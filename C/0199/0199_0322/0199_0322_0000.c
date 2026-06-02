#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned int);
extern unsigned char (*v2) (signed short, unsigned int);
extern signed char v3 (unsigned int, signed char, signed int);
extern signed char (*v4) (unsigned int, signed char, signed int);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
void v7 (unsigned short);
void (*v8) (unsigned short) = v7;
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
signed int v13 (void);
signed int (*v14) (void) = v13;
extern unsigned short v15 (signed char, unsigned short, unsigned int, unsigned short);
extern unsigned short (*v16) (signed char, unsigned short, unsigned int, unsigned short);
signed char v17 (signed int);
signed char (*v18) (signed int) = v17;
extern unsigned short v19 (unsigned int, unsigned char, unsigned short, unsigned char);
extern unsigned short (*v20) (unsigned int, unsigned char, unsigned short, unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned int v23 (unsigned short, signed char, signed char);
extern unsigned int (*v24) (unsigned short, signed char, signed char);
signed short v25 (signed char, signed short);
signed short (*v26) (signed char, signed short) = v25;
extern unsigned int v27 (signed char, signed char);
extern unsigned int (*v28) (signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
unsigned char v32 = 7;
unsigned int v31 = 1U;

signed short v25 (signed char v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = 2;
signed int v37 = 0;
signed char v36 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed int v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
unsigned short v42 = 1;
unsigned char v41 = 4;
unsigned short v40 = 4;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v43;
unsigned char v44;
unsigned short v45;
unsigned char v46;
unsigned short v47;
v43 = 7U - 7U;
v44 = v41 + 0;
v45 = v40 + v42;
v46 = v41 + v41;
v47 = v19 (v43, v44, v45, v46);
history[history_index++] = (int)v47;
}
break;
case 4: 
{
unsigned int v48;
unsigned char v49;
unsigned short v50;
unsigned char v51;
unsigned short v52;
v48 = 5U - 5U;
v49 = v41 + 4;
v50 = 5 - v40;
v51 = v41 + 7;
v52 = v19 (v48, v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 6: 
{
unsigned short v53;
signed char v54;
signed char v55;
unsigned int v56;
v53 = v40 + 1;
v54 = -3 + 1;
v55 = -4 + -2;
v56 = v23 (v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 10: 
return 3;
default: abort ();
}
}
}
}

signed int v13 (void)
{
{
for (;;) {
signed int v59 = -3;
signed short v58 = 1;
unsigned int v57 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned short v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
signed short v63 = -2;
unsigned short v62 = 2;
unsigned short v61 = 1;
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
signed short v66;
unsigned int v67;
unsigned char v68;
v66 = 0 + -2;
v67 = 4U - 1U;
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
