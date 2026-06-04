#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (signed char);
static unsigned char (*v2) (signed char) = v1;
extern void v3 (signed short, unsigned int, signed char, signed char);
extern void (*v4) (signed short, unsigned int, signed char, signed char);
extern unsigned short v5 (unsigned int, signed short);
extern unsigned short (*v6) (unsigned int, signed short);
extern signed short v7 (unsigned short, unsigned char);
extern signed short (*v8) (unsigned short, unsigned char);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (signed char, unsigned short, unsigned int);
extern signed short (*v12) (signed char, unsigned short, unsigned int);
unsigned char v13 (signed int, signed short);
unsigned char (*v14) (signed int, signed short) = v13;
extern signed int v15 (signed char, unsigned char, signed int, unsigned char);
extern signed int (*v16) (signed char, unsigned char, signed int, unsigned char);
extern void v17 (unsigned int, unsigned short, signed char, unsigned short);
extern void (*v18) (unsigned int, unsigned short, signed char, unsigned short);
extern void v19 (signed char, unsigned char);
extern void (*v20) (signed char, unsigned char);
void v21 (signed short, signed int);
void (*v22) (signed short, signed int) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned int v25 (signed int, unsigned char);
extern unsigned int (*v26) (signed int, unsigned char);
extern signed char v27 (signed short, signed short);
extern signed char (*v28) (signed short, signed short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
signed int v32 = 3;
signed int v31 = -2;

void v21 (signed short v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 6U;
unsigned char v37 = 2;
signed int v36 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed int v39, signed short v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 4;
unsigned int v42 = 6U;
signed int v41 = -1;
trace++;
switch (trace)
{
case 2: 
return 1;
case 5: 
{
unsigned short v44;
v44 = v23 ();
history[history_index++] = (int)v44;
}
break;
case 7: 
{
unsigned short v45;
v45 = v23 ();
history[history_index++] = (int)v45;
}
break;
case 9: 
return v43;
default: abort ();
}
}
}
}

static unsigned char v1 (signed char v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
signed char v49 = 0;
signed char v48 = 3;
signed short v47 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v50;
signed short v51;
unsigned short v52;
v50 = 3U - 2U;
v51 = v47 + v47;
v52 = v5 (v50, v51);
history[history_index++] = (int)v52;
}
break;
case 12: 
return 5;
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
signed char v55;
unsigned char v56;
v55 = -2 + -3;
v56 = v1 (v55);
history[history_index++] = (int)v56;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
