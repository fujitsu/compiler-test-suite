#include <stdio.h>
#include <stdlib.h>
static void v1 (void);
static void (*v2) (void) = v1;
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern void v7 (signed char, signed char);
extern void (*v8) (signed char, signed char);
extern void v9 (unsigned int, unsigned char, signed int, signed int);
extern void (*v10) (unsigned int, unsigned char, signed int, signed int);
extern unsigned int v11 (signed short, signed char);
extern unsigned int (*v12) (signed short, signed char);
extern void v13 (unsigned char);
extern void (*v14) (unsigned char);
signed int v15 (signed int, signed char, unsigned short, unsigned char);
signed int (*v16) (signed int, signed char, unsigned short, unsigned char) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
static signed short v21 (unsigned int, unsigned int, unsigned char, unsigned int);
static signed short (*v22) (unsigned int, unsigned int, unsigned char, unsigned int) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
void v25 (unsigned int, signed short, unsigned short);
void (*v26) (unsigned int, signed short, unsigned short) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (signed char, unsigned int);
extern unsigned short (*v30) (signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
unsigned char v32 = 2;
signed char v31 = 1;

void v25 (unsigned int v34, signed short v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = -4;
unsigned char v38 = 1;
signed short v37 = 3;
trace++;
switch (trace)
{
case 5: 
return;
case 7: 
return;
case 9: 
return;
default: abort ();
}
}
}
}

static signed short v21 (unsigned int v40, unsigned int v41, unsigned char v42, unsigned int v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = -4;
unsigned char v45 = 0;
signed char v44 = -3;
trace++;
switch (trace)
{
case 1: 
return 0;
default: abort ();
}
}
}
}

signed int v15 (signed int v47, signed char v48, unsigned short v49, unsigned char v50)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned char v53 = 4;
unsigned short v52 = 2;
unsigned short v51 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (void)
{
{
for (;;) {
signed short v56 = -4;
signed char v55 = -4;
unsigned short v54 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v57;
unsigned int v58;
unsigned char v59;
unsigned int v60;
signed short v61;
v57 = 1U - 0U;
v58 = 2U - 3U;
v59 = 7 + 2;
v60 = 4U + 0U;
v61 = v21 (v57, v58, v59, v60);
history[history_index++] = (int)v61;
}
break;
case 2: 
{
unsigned short v62;
v62 = 4 + 7;
v3 (v62);
}
break;
case 12: 
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
v1 ();
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
