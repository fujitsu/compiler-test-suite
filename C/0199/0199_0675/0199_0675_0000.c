#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned short, unsigned short);
extern signed short (*v2) (unsigned short, unsigned short);
extern unsigned int v3 (unsigned char);
extern unsigned int (*v4) (unsigned char);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
unsigned short v7 (unsigned short, signed short);
unsigned short (*v8) (unsigned short, signed short) = v7;
extern void v9 (unsigned short, signed short, signed int);
extern void (*v10) (unsigned short, signed short, signed int);
void v11 (unsigned short, signed short, unsigned int);
void (*v12) (unsigned short, signed short, unsigned int) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
unsigned char v15 (unsigned short);
unsigned char (*v16) (unsigned short) = v15;
extern void v17 (signed char, unsigned short, unsigned short, unsigned int);
extern void (*v18) (signed char, unsigned short, unsigned short, unsigned int);
extern unsigned short v19 (signed short);
extern unsigned short (*v20) (signed short);
extern unsigned short v21 (signed char, unsigned short);
extern unsigned short (*v22) (signed char, unsigned short);
extern void v23 (signed char, unsigned char);
extern void (*v24) (signed char, unsigned char);
extern signed short v25 (signed int, unsigned int, signed short);
extern signed short (*v26) (signed int, unsigned int, signed short);
void v27 (unsigned int, signed char, unsigned short, unsigned short);
void (*v28) (unsigned int, signed char, unsigned short, unsigned short) = v27;
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
signed short v32 = 1;
signed int v31 = -4;

void v27 (unsigned int v34, signed char v35, unsigned short v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = 2;
signed short v39 = -2;
signed int v38 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned short v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 5U;
signed short v43 = -1;
signed char v42 = 1;
trace++;
switch (trace)
{
case 3: 
{
signed short v45;
unsigned short v46;
v45 = -1 + v43;
v46 = v19 (v45);
history[history_index++] = (int)v46;
}
break;
case 5: 
{
signed short v47;
unsigned short v48;
v47 = v43 - -1;
v48 = v19 (v47);
history[history_index++] = (int)v48;
}
break;
case 7: 
return 5;
default: abort ();
}
}
}
}

void v11 (unsigned short v49, signed short v50, unsigned int v51)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned char v54 = 1;
signed int v53 = 2;
signed char v52 = 3;
trace++;
switch (trace)
{
case 9: 
{
signed int v55;
unsigned int v56;
signed short v57;
signed short v58;
v55 = v53 + v53;
v56 = 0U + 5U;
v57 = v50 - -3;
v58 = v25 (v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned short v7 (unsigned short v59, signed short v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed char v63 = 3;
signed int v62 = -2;
unsigned int v61 = 5U;
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
unsigned short v67;
signed short v68;
v66 = 3 + 7;
v67 = 1 - 4;
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
