#include <stdio.h>
#include <stdlib.h>
static signed short v1 (void);
static signed short (*v2) (void) = v1;
extern void v3 (signed int, signed short, unsigned char);
extern void (*v4) (signed int, signed short, unsigned char);
extern unsigned char v5 (unsigned short);
extern unsigned char (*v6) (unsigned short);
extern signed int v7 (unsigned int, signed short, unsigned int);
extern signed int (*v8) (unsigned int, signed short, unsigned int);
extern signed char v9 (unsigned int, unsigned short, unsigned short, unsigned short);
extern signed char (*v10) (unsigned int, unsigned short, unsigned short, unsigned short);
extern signed char v11 (signed char);
extern signed char (*v12) (signed char);
signed int v13 (unsigned char, signed char, signed char, unsigned short);
signed int (*v14) (unsigned char, signed char, signed char, unsigned short) = v13;
extern signed char v15 (unsigned char, signed char, signed short);
extern signed char (*v16) (unsigned char, signed char, signed short);
void v17 (signed int, unsigned short, signed short, unsigned int);
void (*v18) (signed int, unsigned short, signed short, unsigned int) = v17;
extern unsigned char v19 (unsigned int);
extern unsigned char (*v20) (unsigned int);
extern signed int v21 (unsigned char, unsigned int, unsigned int, signed short);
extern signed int (*v22) (unsigned char, unsigned int, unsigned int, signed short);
extern signed int v23 (unsigned short, signed char);
extern signed int (*v24) (unsigned short, signed char);
extern signed short v25 (signed int, signed char);
extern signed short (*v26) (signed int, signed char);
extern signed char v27 (signed short, signed int, unsigned int, signed int);
extern signed char (*v28) (signed short, signed int, unsigned int, signed int);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
unsigned char v32 = 4;
unsigned int v31 = 2U;

void v17 (signed int v34, unsigned short v35, signed short v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 5;
signed short v39 = -4;
signed char v38 = -1;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v41;
unsigned int v42;
unsigned int v43;
signed short v44;
signed int v45;
v41 = 1 + v40;
v42 = 5U - 5U;
v43 = 3U - 5U;
v44 = 1 + v36;
v45 = v21 (v41, v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed int v13 (unsigned char v46, signed char v47, signed char v48, unsigned short v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed short v52 = 1;
unsigned char v51 = 0;
signed short v50 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (void)
{
{
for (;;) {
unsigned int v55 = 4U;
signed char v54 = 2;
signed char v53 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed int v56;
signed short v57;
unsigned char v58;
v56 = -3 - 2;
v57 = -4 - -2;
v58 = 4 - 4;
v3 (v56, v57, v58);
}
break;
case 14: 
return 2;
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
signed short v61;
v61 = v1 ();
history[history_index++] = (int)v61;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
