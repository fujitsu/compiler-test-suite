#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern signed short v5 (signed int, unsigned char);
extern signed short (*v6) (signed int, unsigned char);
extern signed char v7 (unsigned short, unsigned short);
extern signed char (*v8) (unsigned short, unsigned short);
void v9 (signed int, unsigned short, signed char, unsigned char);
void (*v10) (signed int, unsigned short, signed char, unsigned char) = v9;
extern unsigned short v11 (unsigned int, unsigned short, signed int, unsigned char);
extern unsigned short (*v12) (unsigned int, unsigned short, signed int, unsigned char);
unsigned short v13 (unsigned short);
unsigned short (*v14) (unsigned short) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v17 (signed short, signed int);
extern unsigned short (*v18) (signed short, signed int);
extern void v19 (void);
extern void (*v20) (void);
void v21 (signed short, signed int, unsigned short);
void (*v22) (signed short, signed int, unsigned short) = v21;
extern void v23 (void);
extern void (*v24) (void);
extern unsigned short v25 (unsigned int);
extern unsigned short (*v26) (unsigned int);
extern signed int v27 (unsigned short, signed char);
extern signed int (*v28) (unsigned short, signed char);
extern unsigned short v29 (signed char, signed char, unsigned short);
extern unsigned short (*v30) (signed char, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -2;
unsigned short v32 = 1;
unsigned char v31 = 3;

void v21 (signed short v34, signed int v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 0;
signed int v38 = 0;
unsigned int v37 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned short v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = 3;
unsigned short v42 = 5;
unsigned int v41 = 3U;
trace++;
switch (trace)
{
case 1: 
{
v23 ();
}
break;
case 5: 
{
unsigned int v44;
unsigned short v45;
v44 = 0U - v41;
v45 = v25 (v44);
history[history_index++] = (int)v45;
}
break;
case 7: 
{
signed char v46;
signed char v47;
unsigned short v48;
unsigned short v49;
v46 = v43 - v43;
v47 = v43 - v43;
v48 = v40 - 3;
v49 = v29 (v46, v47, v48);
history[history_index++] = (int)v49;
}
break;
case 9: 
{
v23 ();
}
break;
case 13: 
return v42;
default: abort ();
}
}
}
}

void v9 (signed int v50, unsigned short v51, signed char v52, unsigned char v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned char v56 = 5;
unsigned int v55 = 7U;
unsigned short v54 = 7;
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
unsigned int v59;
unsigned char v60;
v59 = 0U - 4U;
v60 = v1 (v59);
history[history_index++] = (int)v60;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
