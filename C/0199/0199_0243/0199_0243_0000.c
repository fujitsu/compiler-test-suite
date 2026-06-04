#include <stdio.h>
#include <stdlib.h>
static signed short v1 (unsigned int, unsigned short);
static signed short (*v2) (unsigned int, unsigned short) = v1;
static signed char v3 (void);
static signed char (*v4) (void) = v3;
extern unsigned short v5 (signed int, unsigned char, unsigned int, unsigned short);
extern unsigned short (*v6) (signed int, unsigned char, unsigned int, unsigned short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern signed short v11 (signed char, unsigned short);
extern signed short (*v12) (signed char, unsigned short);
extern signed int v15 (unsigned char);
extern signed int (*v16) (unsigned char);
extern unsigned short v17 (signed int, unsigned short);
extern unsigned short (*v18) (signed int, unsigned short);
signed int v19 (signed int, unsigned short, signed int);
signed int (*v20) (signed int, unsigned short, signed int) = v19;
extern unsigned short v21 (unsigned short, unsigned int, unsigned int);
extern unsigned short (*v22) (unsigned short, unsigned int, unsigned int);
extern unsigned int v23 (unsigned int, signed char, unsigned char);
extern unsigned int (*v24) (unsigned int, signed char, unsigned char);
extern signed int v25 (signed short, signed short, signed short, signed char);
extern signed int (*v26) (signed short, signed short, signed short, signed char);
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 7U;
signed char v32 = -3;
unsigned short v31 = 0;

signed int v19 (signed int v34, unsigned short v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 6;
signed short v38 = -1;
unsigned short v37 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v3 (void)
{
{
for (;;) {
unsigned char v42 = 0;
unsigned char v41 = 4;
unsigned int v40 = 3U;
trace++;
switch (trace)
{
case 11: 
return -2;
default: abort ();
}
}
}
}

static signed short v1 (unsigned int v43, unsigned short v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned int v47 = 0U;
signed int v46 = -2;
signed char v45 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v48;
signed int v49;
v48 = 5 + 0;
v49 = v15 (v48);
history[history_index++] = (int)v49;
}
break;
case 8: 
{
signed char v50;
unsigned short v51;
signed short v52;
v50 = v45 + -3;
v51 = 7 - 0;
v52 = v11 (v50, v51);
history[history_index++] = (int)v52;
}
break;
case 10: 
{
signed char v53;
v53 = v3 ();
history[history_index++] = (int)v53;
}
break;
case 12: 
return -2;
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
unsigned int v56;
unsigned short v57;
signed short v58;
v56 = v33 - 6U;
v57 = v31 - 5;
v58 = v1 (v56, v57);
history[history_index++] = (int)v58;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
