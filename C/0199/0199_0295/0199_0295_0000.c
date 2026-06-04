#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (unsigned int, signed short);
static unsigned short (*v2) (unsigned int, signed short) = v1;
unsigned short v3 (signed int, unsigned char);
unsigned short (*v4) (signed int, unsigned char) = v3;
extern unsigned char v5 (unsigned int, unsigned char, signed char, signed char);
extern unsigned char (*v6) (unsigned int, unsigned char, signed char, signed char);
extern signed int v7 (signed int, signed int, unsigned char);
extern signed int (*v8) (signed int, signed int, unsigned char);
signed char v9 (unsigned int, signed short);
signed char (*v10) (unsigned int, signed short) = v9;
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern unsigned int v13 (unsigned int, unsigned short);
extern unsigned int (*v14) (unsigned int, unsigned short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
void v17 (void);
void (*v18) (void) = v17;
extern unsigned char v19 (unsigned int);
extern unsigned char (*v20) (unsigned int);
extern void v21 (unsigned int, unsigned int, signed short);
extern void (*v22) (unsigned int, unsigned int, signed short);
extern unsigned int v23 (unsigned short, unsigned short);
extern unsigned int (*v24) (unsigned short, unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned short v27 (unsigned char);
extern unsigned short (*v28) (unsigned char);
extern unsigned short v29 (unsigned int, unsigned char);
extern unsigned short (*v30) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 2;
unsigned char v32 = 5;
unsigned char v31 = 1;

void v17 (void)
{
{
for (;;) {
unsigned char v36 = 5;
signed int v35 = 2;
unsigned int v34 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned int v37, signed short v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
unsigned char v41 = 3;
signed short v40 = -4;
signed char v39 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed int v42, unsigned char v43)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed int v46 = -1;
unsigned char v45 = 3;
unsigned int v44 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v1 (unsigned int v47, signed short v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed char v51 = -3;
unsigned short v50 = 5;
signed char v49 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v52;
v52 = v15 ();
history[history_index++] = (int)v52;
}
break;
case 6: 
{
unsigned int v53;
unsigned char v54;
v53 = v47 - v47;
v54 = v19 (v53);
history[history_index++] = (int)v54;
}
break;
case 12: 
return 0;
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
unsigned int v57;
signed short v58;
unsigned short v59;
v57 = 1U + 5U;
v58 = v33 + -4;
v59 = v1 (v57, v58);
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
