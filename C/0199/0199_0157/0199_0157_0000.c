#include <stdio.h>
#include <stdlib.h>
static signed int v1 (signed int, unsigned char);
static signed int (*v2) (signed int, unsigned char) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
signed short v7 (signed int);
signed short (*v8) (signed int) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern signed int v11 (signed int, signed int);
extern signed int (*v12) (signed int, signed int);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
unsigned char v15 (unsigned char, unsigned short, signed char);
unsigned char (*v16) (unsigned char, unsigned short, signed char) = v15;
extern void v17 (unsigned short, unsigned char, signed int, unsigned int);
extern void (*v18) (unsigned short, unsigned char, signed int, unsigned int);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern void v21 (void);
extern void (*v22) (void);
void v23 (signed char);
void (*v24) (signed char) = v23;
extern unsigned char v25 (unsigned short, signed short, signed char, signed short);
extern unsigned char (*v26) (unsigned short, signed short, signed char, signed short);
extern unsigned int v27 (signed char, signed char, unsigned int);
extern unsigned int (*v28) (signed char, signed char, unsigned int);
extern signed char v29 (signed short, unsigned int, unsigned char, unsigned char);
extern signed char (*v30) (signed short, unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
signed char v32 = 2;
unsigned short v31 = 7;

void v23 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = 2;
signed int v36 = 2;
signed short v35 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned char v38, unsigned short v39, signed char v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned short v43 = 0;
unsigned char v42 = 0;
signed short v41 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed int v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
unsigned int v47 = 1U;
signed int v46 = 2;
signed short v45 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (signed int v48, unsigned char v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed int v52 = 0;
signed int v51 = 1;
unsigned short v50 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed short v53;
unsigned int v54;
unsigned char v55;
unsigned char v56;
signed char v57;
v53 = -4 + -2;
v54 = 2U - 1U;
v55 = 2 + 5;
v56 = 5 - 6;
v57 = v29 (v53, v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 2: 
{
unsigned int v58;
v58 = v13 ();
history[history_index++] = (int)v58;
}
break;
case 12: 
return v51;
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
signed int v61;
unsigned char v62;
signed int v63;
v61 = 3 + 0;
v62 = 0 - 1;
v63 = v1 (v61, v62);
history[history_index++] = (int)v63;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
