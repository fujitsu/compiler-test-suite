#include <stdio.h>
#include <stdlib.h>
static signed char v1 (void);
static signed char (*v2) (void) = v1;
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern unsigned int v5 (unsigned short);
extern unsigned int (*v6) (unsigned short);
unsigned short v7 (signed char, unsigned int, signed char);
unsigned short (*v8) (signed char, unsigned int, signed char) = v7;
extern void v9 (unsigned int);
extern void (*v10) (unsigned int);
extern unsigned int v11 (unsigned short, signed char);
extern unsigned int (*v12) (unsigned short, signed char);
extern unsigned int v13 (unsigned int, signed char, unsigned char);
extern unsigned int (*v14) (unsigned int, signed char, unsigned char);
extern signed short v15 (unsigned short, unsigned short, signed char);
extern signed short (*v16) (unsigned short, unsigned short, signed char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern void v19 (void);
extern void (*v20) (void);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned char v23 (unsigned char, signed short);
extern unsigned char (*v24) (unsigned char, signed short);
extern unsigned int v25 (signed int);
extern unsigned int (*v26) (signed int);
extern void v27 (unsigned int, unsigned char);
extern void (*v28) (unsigned int, unsigned char);
void v29 (signed char, unsigned int, unsigned char);
void (*v30) (signed char, unsigned int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -2;
unsigned short v32 = 2;
signed int v31 = -2;

void v29 (signed char v34, unsigned int v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 3;
unsigned int v38 = 2U;
signed char v37 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed char v40, unsigned int v41, signed char v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 4;
signed char v44 = -1;
unsigned short v43 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (void)
{
{
for (;;) {
signed short v48 = -1;
signed char v47 = -1;
signed short v46 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (void)
{
{
for (;;) {
unsigned char v51 = 3;
unsigned short v50 = 4;
unsigned int v49 = 0U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v52;
unsigned char v53;
v52 = 6U - v49;
v53 = v51 + v51;
v27 (v52, v53);
}
break;
case 2: 
{
unsigned int v54;
v54 = v49 - 0U;
v9 (v54);
}
break;
case 10: 
{
unsigned int v55;
unsigned char v56;
v55 = 4U - 5U;
v56 = 1 + v51;
v27 (v55, v56);
}
break;
case 12: 
return 1;
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
signed char v59;
v59 = v1 ();
history[history_index++] = (int)v59;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
