#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed short, signed short);
extern void (*v2) (signed short, signed short);
void v3 (void);
void (*v4) (void) = v3;
extern signed short v5 (unsigned int, unsigned char);
extern signed short (*v6) (unsigned int, unsigned char);
extern signed int v7 (void);
extern signed int (*v8) (void);
unsigned short v9 (signed int);
unsigned short (*v10) (signed int) = v9;
unsigned int v11 (signed short, signed int);
unsigned int (*v12) (signed short, signed int) = v11;
extern void v13 (signed char, unsigned short);
extern void (*v14) (signed char, unsigned short);
extern signed char v15 (signed short, signed int, signed char, signed char);
extern signed char (*v16) (signed short, signed int, signed char, signed char);
extern signed short v17 (signed int, unsigned int, unsigned char);
extern signed short (*v18) (signed int, unsigned int, unsigned char);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed short v21 (signed char, signed short, unsigned char);
extern signed short (*v22) (signed char, signed short, unsigned char);
extern signed short v23 (void);
extern signed short (*v24) (void);
unsigned short v25 (signed int, unsigned char, signed char);
unsigned short (*v26) (signed int, unsigned char, signed char) = v25;
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
signed short v32 = 1;
signed int v31 = 3;

unsigned short v25 (signed int v34, unsigned char v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 6;
unsigned short v38 = 2;
unsigned char v37 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed short v40, signed int v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 5U;
signed int v43 = -4;
signed short v42 = 3;
trace++;
switch (trace)
{
case 3: 
{
signed char v45;
v45 = v19 ();
history[history_index++] = (int)v45;
}
break;
case 17: 
return 1U;
default: abort ();
}
}
}
}

unsigned short v9 (signed int v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
unsigned char v49 = 1;
signed int v48 = -1;
unsigned short v47 = 7;
trace++;
switch (trace)
{
case 7: 
{
signed int v50;
unsigned int v51;
unsigned char v52;
signed short v53;
v50 = -1 + 0;
v51 = 4U - 3U;
v52 = v49 - 2;
v53 = v17 (v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 9: 
{
signed int v54;
unsigned int v55;
unsigned char v56;
signed short v57;
v54 = -1 - v48;
v55 = 5U - 1U;
v56 = 7 + v49;
v57 = v17 (v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 13: 
return v47;
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
signed int v60 = 2;
signed short v59 = 1;
signed int v58 = 2;
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
signed short v63;
signed short v64;
v63 = v32 - v32;
v64 = v32 + v32;
v1 (v63, v64);
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
