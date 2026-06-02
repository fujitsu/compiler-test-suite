#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (unsigned int, unsigned int, signed char);
static unsigned int (*v2) (unsigned int, unsigned int, signed char) = v1;
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern void v5 (signed short, unsigned short);
extern void (*v6) (signed short, unsigned short);
extern signed short v7 (unsigned short, unsigned char, signed int);
extern signed short (*v8) (unsigned short, unsigned char, signed int);
extern unsigned int v9 (signed short, signed short, unsigned short, unsigned short);
extern unsigned int (*v10) (signed short, signed short, unsigned short, unsigned short);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern unsigned int v17 (signed int, unsigned short);
extern unsigned int (*v18) (signed int, unsigned short);
extern unsigned int v19 (unsigned char, signed short, unsigned int, unsigned char);
extern unsigned int (*v20) (unsigned char, signed short, unsigned int, unsigned char);
extern signed char v21 (unsigned short, unsigned char, unsigned char);
extern signed char (*v22) (unsigned short, unsigned char, unsigned char);
signed int v23 (unsigned char);
signed int (*v24) (unsigned char) = v23;
extern signed char v25 (unsigned short, unsigned int);
extern signed char (*v26) (unsigned short, unsigned int);
extern unsigned char v27 (unsigned char, unsigned int, unsigned char, signed int);
extern unsigned char (*v28) (unsigned char, unsigned int, unsigned char, signed int);
extern signed int v29 (unsigned short, signed int, unsigned short);
extern signed int (*v30) (unsigned short, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 6;
signed short v32 = 0;
unsigned short v31 = 0;

signed int v23 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = -3;
signed short v36 = 1;
unsigned short v35 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
unsigned char v40 = 1;
signed int v39 = -3;
signed int v38 = -3;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v41;
v41 = v15 ();
history[history_index++] = (int)v41;
}
break;
case 5: 
return 3U;
case 6: 
{
unsigned int v42;
v42 = v15 ();
history[history_index++] = (int)v42;
}
break;
case 7: 
{
unsigned int v43;
v43 = v15 ();
history[history_index++] = (int)v43;
}
break;
case 8: 
return 3U;
case 9: 
{
unsigned int v44;
v44 = v15 ();
history[history_index++] = (int)v44;
}
break;
case 10: 
{
unsigned int v45;
v45 = v15 ();
history[history_index++] = (int)v45;
}
break;
case 11: 
return 0U;
case 12: 
return 1U;
case 13: 
return 0U;
case 14: 
return 5U;
default: abort ();
}
}
}
}

static unsigned int v1 (unsigned int v46, unsigned int v47, signed char v48)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed short v51 = 0;
signed short v50 = -2;
unsigned short v49 = 4;
trace++;
switch (trace)
{
case 0: 
{
v11 ();
}
break;
case 16: 
return v47;
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
unsigned int v54;
unsigned int v55;
signed char v56;
unsigned int v57;
v54 = 3U + 7U;
v55 = 0U + 6U;
v56 = 0 + -2;
v57 = v1 (v54, v55, v56);
history[history_index++] = (int)v57;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
