#include <stdio.h>
#include <stdlib.h>
static signed int v1 (unsigned short, unsigned char, unsigned int, signed short);
static signed int (*v2) (unsigned short, unsigned char, unsigned int, signed short) = v1;
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern unsigned char v5 (signed short, signed int, signed short, signed int);
extern unsigned char (*v6) (signed short, signed int, signed short, signed int);
extern signed char v7 (signed short, unsigned char, unsigned int, signed int);
extern signed char (*v8) (signed short, unsigned char, unsigned int, signed int);
unsigned int v9 (void);
unsigned int (*v10) (void) = v9;
extern signed char v11 (unsigned short, unsigned char, signed char, unsigned short);
extern signed char (*v12) (unsigned short, unsigned char, signed char, unsigned short);
signed char v13 (void);
signed char (*v14) (void) = v13;
extern void v15 (signed int, signed int);
extern void (*v16) (signed int, signed int);
extern signed int v17 (unsigned short, signed short);
extern signed int (*v18) (unsigned short, signed short);
extern void v19 (unsigned short, signed int);
extern void (*v20) (unsigned short, signed int);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed char v23 (unsigned short);
extern signed char (*v24) (unsigned short);
void v25 (unsigned int, unsigned char, unsigned short, signed int);
void (*v26) (unsigned int, unsigned char, unsigned short, signed int) = v25;
extern signed char v27 (void);
extern signed char (*v28) (void);
extern signed char v29 (signed short, unsigned short, unsigned int);
extern signed char (*v30) (signed short, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
unsigned int v32 = 5U;
unsigned char v31 = 0;

void v25 (unsigned int v34, unsigned char v35, unsigned short v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -1;
signed int v39 = 3;
signed int v38 = 3;
trace++;
switch (trace)
{
case 6: 
return;
case 8: 
{
unsigned short v41;
signed char v42;
v41 = 0 + v36;
v42 = v23 (v41);
history[history_index++] = (int)v42;
}
break;
case 10: 
return;
case 12: 
return;
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
signed short v45 = -4;
signed int v44 = 3;
signed short v43 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (void)
{
{
for (;;) {
unsigned char v48 = 5;
unsigned int v47 = 3U;
signed short v46 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (unsigned short v49, unsigned char v50, unsigned int v51, signed short v52)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed short v55 = -3;
unsigned char v54 = 2;
unsigned char v53 = 6;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v56;
signed int v57;
v56 = 4 - v49;
v57 = 0 + -4;
v19 (v56, v57);
}
break;
case 2: 
{
unsigned short v58;
signed short v59;
signed int v60;
v58 = 2 + 0;
v59 = 2 + 2;
v60 = v17 (v58, v59);
history[history_index++] = (int)v60;
}
break;
case 4: 
{
unsigned short v61;
signed short v62;
signed int v63;
v61 = v49 + 1;
v62 = v52 - 1;
v63 = v17 (v61, v62);
history[history_index++] = (int)v63;
}
break;
case 14: 
return -1;
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
signed short v69;
signed int v70;
v66 = 7 + 3;
v67 = v31 + 7;
v68 = v32 - v32;
v69 = 0 - 0;
v70 = v1 (v66, v67, v68, v69);
history[history_index++] = (int)v70;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
